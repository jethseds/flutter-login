import 'package:flutter/material.dart';
import 'package:login/home.dart';
import 'package:login/login.dart';
import 'package:login/services.dart';

void main() {
  runApp(const Register());
}

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _Register createState() => _Register();
}

class _Register extends State<Register> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF1e2120),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 100,
              child: Image.asset('images/logo.png'),
            ),
            GestureDetector(
              child: const Text(
                'Already Registered? Login here.',
                style: TextStyle(color: Colors.red, fontSize: 10),
              ),
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login())),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              alignment: Alignment.bottomLeft,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 25),
                    alignment: Alignment.bottomLeft,
                    child: const Text(
                      'NAME',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    height: 45,
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFF494a4a),
                    ),
                    child: TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 25),
                    alignment: Alignment.bottomLeft,
                    child: const Text(
                      'EMAIL',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    height: 45,
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFF494a4a),
                    ),
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 25),
                    alignment: Alignment.bottomLeft,
                    child: const Text(
                      'PASSWORD',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    height: 45,
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFF494a4a),
                    ),
                    child: TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 25),
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFdd5e5e),
                    ),
                    child: TextButton(
                        onPressed: () {
                          Services()
                              .SignUp(
                                  emailController.text, passwordController.text)
                              .then((value) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => Home())));
                          });
                        },
                        child: Text(
                          'Register',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 25),
                    alignment: Alignment.center,
                    child: const Text(
                      'Create an account?',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
