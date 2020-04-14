import 'package:chat_app/widgets/custombutton.dart';
import 'package:flutter/material.dart';

class ChatterHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.textsms,
                  size: 100,
                  color: Colors.deepPurple[900],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Text(
                  'Chatter',
                  style: TextStyle(
                      color: Colors.deepPurple[900],
                      fontFamily: 'Poppins',
                      fontSize: 26,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Text(
                  "World's most private chatting app".toUpperCase(),
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      color: Colors.deepPurple),
                ),
                SizedBox(
                  height: 60,
                ),
                CustomButton(
                  text: 'Login',
                  accentColor: Colors.deepPurple,
                ),
                SizedBox(
                  height: 10,
                ),
                CustomButton(
                  text: 'Signup',
                  accentColor: Colors.white,
                  mainColor: Colors.deepPurple,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
