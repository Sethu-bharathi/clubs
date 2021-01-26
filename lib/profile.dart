import 'package:flutter/material.dart';

class Profilepage extends StatefulWidget {
  Profilepage({Key key}) : super(key: key);

  @override
  _ProfilepageState createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back,
                    ),
                    color: Colors.pink,
                  ),
                ]),
                Row(
                  children: [
                    Container(
                      child: CircleAvatar(
                        radius: 45,
                        backgroundColor: Colors.orange,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
