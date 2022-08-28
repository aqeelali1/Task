import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart';
import 'package:path/path.dart';

import 'loading.dart';

class todoApp extends StatefulWidget {
  const todoApp({Key? key}) : super(key: key);

  @override
  State<todoApp> createState() => _todoAppState();
}

class _todoAppState extends State<todoApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          elevation: 0,
          title: Text(
            'ToDo',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              children: List.generate(
                  todos.length,
                  (index) => MyCard(
                      todos[index]['title'], todos[index]['completed']))),
        )));
  }

  Widget MyCard(String todo, bool completed) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 9),
      elevation: 2,
      child: Padding(
          padding: const EdgeInsets.all(22),
          child: GestureDetector(
              child: ListTile(
                
            trailing: Checkbox(
              value: completed,
              onChanged: null,
            ),
            title: Text(todo),
          ))),
    );
  }
}
