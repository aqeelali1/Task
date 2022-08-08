import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task/homepage.dart';
import 'package:task/password_reset.dart';
import 'package:task/signup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
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

    final LoginButton = Material(
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
          'Login',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.normal, color: Colors.white),
        ),
      ),
    );

    final RegisterText = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text("Don't have an account!?"),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Register()));
          },
          child: const Text(
            "Sign Up",
            style: TextStyle(
                color: Colors.teal, fontWeight: FontWeight.bold, fontSize: 14),
          ),
        ),
      ],
    );

    final ForgotPassword = GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => PasswordReset()));
      },
      child: const Text(
        "Forgot your password ?  ",
        style: TextStyle(
            color: Colors.teal, fontWeight: FontWeight.bold, fontSize: 16),
      ),
    );

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
                      'assets/l.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(
                  width: 350,
                  child: Text(
                    'Login to your account',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
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
                      SizedBox(
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
                SizedBox(
                  height: 60,
                ),
                emailField,
                SizedBox(
                  height: 20,
                ),
                PasswordField,
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.check_box,
                          color: Colors.teal,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Remember me',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    ForgotPassword,
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Center(child: LoginButton),
                SizedBox(
                  height: 60,
                ),
                Center(child: RegisterText)
              ],
            ),
          )),
    );
  }
}
