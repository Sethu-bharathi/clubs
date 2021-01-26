import 'package:clubs/authentication/signup.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static final id="LoginScreen";
  String email, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(000),
        body: Container(
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: 130),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/cit_logo.png"),
                          fit: BoxFit.contain,
                        ),
                        gradient: LinearGradient(
                            begin: Alignment.center,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.black.withOpacity(1),
                              Colors.black.withOpacity(.8)
                            ])),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Column(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40.0, vertical: 7),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(244, 243, 243, 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.night_shelter,
                                color: Color.fromRGBO(244, 243, 243, 1),
                              ),
                              prefixIcon: Icon(Icons.email_outlined,
                                  color: Colors.pink),
                              border: InputBorder.none,
                              hintText: "Email"),
                          textAlign: TextAlign.center,
                          onChanged: (value) {
                            email = value;
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40.0, vertical: 7),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(244, 243, 243, 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.night_shelter,
                                color: Color.fromRGBO(244, 243, 243, 1),
                              ),
                              prefixIcon: Icon(Icons.keyboard_outlined,
                                  color: Colors.pink),
                              border: InputBorder.none,
                              hintText: "Password"),
                          textAlign: TextAlign.center,
                          onChanged: (value) {
                            password = value;
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 100.0),
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(colors: [
                              Colors.pink,
                              Colors.red.withOpacity(.9)
                            ])),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Text(
                            "Sign in",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Signup.id);
                      },
                      child: Text(
                        "New member? Sign up",
                        style: TextStyle(color: Colors.pink, fontSize: 16.0),
                      ),
                    ),
                  ]),
                ],
              ),
            ],
          ),
        ));
  }
}
