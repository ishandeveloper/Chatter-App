import 'package:chat_app/widgets/custombutton.dart';
import 'package:chat_app/widgets/customtextinput.dart';
import 'package:flutter/material.dart';

class ChatterLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          // margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.2),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Hero(
                  tag: 'heroicon',
                  child: Icon(
                    Icons.textsms,
                    size: 120,
                    color: Colors.deepPurple[900],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Hero(
                  tag:'HeroTitle',
                                  child: Text(
                    'Chatter',
                    style: TextStyle(
                        color: Colors.deepPurple[900],
                        fontFamily: 'Poppins',
                        fontSize: 26,
                        fontWeight: FontWeight.w700),
                  ),
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
                CustomTextInput(
                  hintText: 'Username',
                  leading: Icons.supervised_user_circle,
                ),
                SizedBox(
                  height: 0,
                ),
                CustomTextInput(
                  hintText: 'Password',
                  leading: Icons.lock,
                ),
                SizedBox(
                  height: 30,
                ),
                Hero(
                  tag:'loginbutton',
                                  child: CustomButton(
                    text: 'login',
                    accentColor: Colors.white,
                    mainColor: Colors.deepPurple,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/signup');
                    },
                    child: Text(
                      'or create an account',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          color: Colors.deepPurple),
                    )),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Hero(
                  tag:'footer',
                                  child: Text(
                    'Made with ♥ by ishandeveloper',
                    style: TextStyle(fontFamily: 'Poppins'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
