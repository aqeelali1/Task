import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task/homepage.dart';
import 'package:task/loginPage.dart';

class Register extends StatefulWidget {
  Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

final firstNameController = TextEditingController();
final lastNameController = TextEditingController();
final emailController = TextEditingController();
final passwordController = TextEditingController();
final confirmPasswordController = TextEditingController();

class _RegisterState extends State<Register> {
  final firstNameField = TextFormField(
      controller: firstNameController,
      keyboardType: TextInputType.name,
      onSaved: (value) {
        firstNameController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[250],
        prefixIcon: const Icon(Icons.person),
        contentPadding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
        label: const Text(
          "First Name",
          style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 159, 159, 159)),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15),
        ),
      ));
  final lastNameField = TextFormField(
      controller: lastNameController,
      keyboardType: TextInputType.name,
      onSaved: (value) {
        lastNameController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[250],
        prefixIcon: const Icon(Icons.person),
        contentPadding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
        label: const Text(
          "Last Name",
          style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 159, 159, 159)),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
      ));
  final emailField = TextFormField(
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[250],
        prefixIcon: const Icon(Icons.mail_outline),
        contentPadding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
        label: const Text(
          "Email Address",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 159, 159, 159)),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15),
        ),
      ));
  final PasswordField = TextFormField(
      controller: passwordController,
      keyboardType: TextInputType.visiblePassword,
      onSaved: (value) {
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[250],
        prefixIcon: const Icon(Icons.password_outlined),
        contentPadding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
        label: const Text(
          "Password",
          style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 159, 159, 159)),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15),
        ),
      ));
  final confirmPasswordField = TextFormField(
      controller: confirmPasswordController,
      keyboardType: TextInputType.visiblePassword,
      onSaved: (value) {
        confirmPasswordController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[250],
        prefixIcon: const Icon(Icons.password_outlined),
        contentPadding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
        label: const Text(
          "Confirm Password",
          style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 159, 159, 159)),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15),
        ),
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                height: 280,
                child: Image.asset(
                  'assets/s.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(
              width: 350,
              child: const Text(
                'Register to your account',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                children: [
                  Container(
                    height: 5.0,
                    width: 150.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.teal,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 10,
                    height: 5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.teal,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            firstNameField,
            const SizedBox(
              height: 20,
            ),
            lastNameField,
            const SizedBox(
              height: 20,
            ),
            emailField,
            const SizedBox(
              height: 20,
            ),
            PasswordField,
            const SizedBox(
              height: 20,
            ),
            confirmPasswordField,
            const SizedBox(
              height: 30,
            ),
            Material(
              elevation: 1,
              borderRadius: BorderRadius.circular(18),
              color: Colors.teal,
              child: MaterialButton(
                height: 80,
                minWidth: 1000,
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                child: Text(
                  'Sign Up',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
