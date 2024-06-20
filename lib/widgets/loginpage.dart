import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  String name = "";
  bool changename = false;
  bool passTaggle = true;
  final _formKey = GlobalKey<FormState>();

  String? validateEmail(String? email) {
    RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    final isEmailValid = emailRegex.hasMatch(email ?? '');
    if (!isEmailValid) {
      return "Enter Valid Email";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              child: Image.asset("assets/item3.jpeg"),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Text(
                "L O G I N",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    shadows: [
                      Shadow(
                        offset: Offset(0, 3), // Position of the shadow
                        blurRadius: 5.0, // How blurry the shadow is
                        color: Color.fromARGB(
                            128, 0, 0, 0), // Shadow color with transparency
                      ),
                    ]),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        labelText: 'Email',
                        fillColor: Colors.grey.shade100,
                      ),
                      validator: validateEmail,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 20),
                    child: TextFormField(
                      obscureText: passTaggle,
                      decoration: InputDecoration(
                        hintText: 'Enter Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        labelText: 'password',
                        fillColor: Colors.grey.shade100,
                        suffix: InkWell(
                          onTap: () {
                            setState(() {
                              passTaggle = !passTaggle;
                            });
                          },
                          child: Icon(passTaggle
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                      ),
                      validator: (value) =>
                          value!.isEmpty ? " Enter Valid Password" : null,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 17,
                          color: Color(0xff4c505b)),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgotten Account?",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 15,
                          color: Color.fromARGB(235, 76, 80, 91)),
                    )),
              ],
            ),
            SizedBox(
              height: 35,
            ),
            Material(
              color: Color.fromRGBO(238, 235, 235, 1),
              borderRadius: BorderRadius.circular(changename ? 20 : 8),
              child: InkWell(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    setState(() {
                      changename = !changename;
                    });
                  }

                  if (changename) {
                    Navigator.pushNamed(context, '/home').then((_) {
                      setState(() {
                        changename = false;
                      });
                    });
                  }
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 2),
                  height: 50,
                  width: changename ? 50 : 150,
                  alignment: Alignment.center,
                  child: changename
                      ? Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                      : Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                ),
              ),
            ),
            SizedBox(
              height: 140,
            )
          ],
        ),
      ),
    ));
  }
}
