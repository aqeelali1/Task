import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'First App',
          ),
          toolbarHeight: 80,
        ),
        drawer: Drawer(
          child: Column(children: const [
            UserAccountsDrawerHeader(
              accountName: Text(
                'Aqeel Ali',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              accountEmail: Text('aq.99aw19@gmail.com',
                  style: TextStyle(color: Colors.white)),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://media-exp1.licdn.com/dms/image/C4D03AQEzTI7Q29lcxA/profile-displayphoto-shrink_200_200/0/1657849010358?e=1663804800&v=beta&t=6MXTqyXIKKoGa-bdV24hb3q3sfLvxo3zkNEj3477DNQ'),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://yt3.ggpht.com/M_ADRI4uwOkIj-mrpmHRuMnmcoTPDg8xgPSHz05CgZggGkpS7-aj5JfQ9DmL3--88haZ__9vLQ=s900-c-k-c0x00ffffff-no-rj'),
                ),
              ],
            )
          ]),
        ),
        body: Center(
          child: SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: const EdgeInsets.all(35),
                    margin: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(color: Colors.teal, blurRadius: 2),
                      ],
                    ),
                    child: const Text(
                      'Basic widget app',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Container(
                    padding: const EdgeInsets.all(35),
                    margin: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromARGB(255, 115, 115, 115), width: 1),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(color: Colors.teal, blurRadius: 2),
                      ],
                    ),
                    child: const Text(
                      'BMI Calculator',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Container(
                    padding: const EdgeInsets.all(35),
                    margin: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(color: Colors.teal, blurRadius: 2),
                      ],
                    ),
                    child: const Text(
                      'World Timer app',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                ]),
          )),
        ));
  }
}
