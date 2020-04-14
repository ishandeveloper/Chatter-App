import 'package:chat_app/widgets/custombutton.dart';
import 'package:chat_app/widgets/customtextinput.dart';
import 'package:flutter/material.dart';

class ChatterSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          // margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.2),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.textsms,
                  size: 120,
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
                // Text(
                //   "World's most private chatting app".toUpperCase(),
                //   style: TextStyle(
                //       fontFamily: 'Poppins',
                //       fontSize: 12,
                //       color: Colors.deepPurple),
                // ),
                CustomTextInput(hintText: 'Full Name',leading: Icons.text_format,),
                SizedBox(
                  height: 0,
                ),
                CustomTextInput(hintText: 'Email',leading: Icons.supervised_user_circle,),
                SizedBox(
                  height: 0,
                ),
                CustomTextInput(hintText: 'Password',leading: Icons.lock,),
                SizedBox(
                  height: 30,
                ),
                CustomButton(
                  text: 'sign up',
                  accentColor: Colors.white,
                  mainColor: Colors.deepPurple,
                ),
                SizedBox(height: 5,),
                GestureDetector(onTap: (){
                  Navigator.pushReplacementNamed(context, '/login');
                },child: Text('or log in instead',style: TextStyle(fontFamily: 'Poppins',fontSize: 12,color: Colors.deepPurple),)),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Text('Made with ♥ by ishandeveloper',style: TextStyle(fontFamily: 'Poppins'),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
