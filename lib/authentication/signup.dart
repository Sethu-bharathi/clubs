import 'package:clubs/authentication/Login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Signup extends StatefulWidget {
  static final id="Signup";
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String email, name, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(000),
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(height: 60),
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
              height: 50,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40.0, vertical: 7),
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
                      prefixIcon:
                          Icon(Icons.person_outline, color: Colors.pink),
                      border: InputBorder.none,
                      hintText: "name"),
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    name = value;
                  },
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40.0, vertical: 7),
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
                      prefixIcon:
                          Icon(Icons.dialpad_outlined, color: Colors.pink),
                      border: InputBorder.none,
                      hintText: "Reg no"),
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    name = value;
                  },
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40.0, vertical: 7),
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
                      prefixIcon:
                          Icon(Icons.email_outlined, color: Colors.pink),
                      border: InputBorder.none,
                      hintText: "Year of study"),
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    name = value;
                  },
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40.0, vertical: 7),
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
                      prefixIcon:
                          Icon(Icons.email_outlined, color: Colors.pink),
                      border: InputBorder.none,
                      hintText: "Email"),
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    name = value;
                  },
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40.0, vertical: 7),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(244, 243, 243, 1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.night_shelter,
                        color: Color.fromRGBO(244, 243, 243, 1),
                      ),
                      prefixIcon: Icon(
                        Icons.keyboard,
                        color: Colors.pink,
                      ),
                      border: InputBorder.none,
                      hintText: "Password"),
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    name = value;
                  },
                ),
              ),
            ),
            SizedBox(height:20),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 100.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                        colors: [Colors.pink, Colors.red.withOpacity(.9)])),
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            MaterialButton(
              onPressed: (){
                Navigator.pushNamed(context, LoginScreen.id);
              },
              child:Text("Already a member? Log in",style:TextStyle(color:Colors.pink)),
            ),
            SizedBox(height:20.0),
          ],
        ),
      ),
    );
  }
}
Future <void> signup(String email,String password)async{
  final _auth=FirebaseAuth.instance;
  if(email.contains("@cit.edu.in")){
    await _auth.createUserWithEmailAndPassword(email: email, password: password);
  }
}
