import 'package:flutter/material.dart';
import 'package:task/ToDoApp/home.dart';
import 'package:task/ToDoApp/loading.dart';

import 'package:task/homepage.dart';
import 'package:task/loginPage.dart';
import 'package:task/password_reset.dart';
import 'package:task/signup.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/loginpage',
    routes: {
      '/home': ((context) => todoApp()),
      '/loading': ((context) => Loading()),
      '/homepafe': ((context) => Home()),
      '/loginpage': ((context) => LoginScreen()),
      '/password_reset': ((context) => PasswordReset()),
      '/signup': ((context) => Register()),
    },
    debugShowCheckedModeBanner: false,
    title: 'Myapp',
    theme: ThemeData(primarySwatch: Colors.teal),
  ));
}
