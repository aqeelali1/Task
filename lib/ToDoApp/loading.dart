import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart';
import 'package:task/ToDoApp/home.dart';

var todos = [];

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void initState() {
    GetTodos();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).push(MaterialPageRoute(builder: (_) => todoApp()));
    });

    super.initState();
  }

  String time = "Loading";
  void GetTodos() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/todos/');

    var response = await get(url);
    var data = jsonDecode(response.body);
    todos.addAll(data);
    print(todos[1]);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.teal,
        body: Center(
          child: SpinKitFadingFour(
            color: Colors.white,
            size: 50.0,
          ),
        ));
  }
}
