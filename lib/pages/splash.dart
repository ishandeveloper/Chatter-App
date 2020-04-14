import 'package:chat_app/widgets/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ChatterHome extends StatefulWidget {
  @override
  _ChatterHomeState createState() => _ChatterHomeState();
}

class _ChatterHomeState extends State<ChatterHome> with SingleTickerProviderStateMixin{

  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller=AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
  }
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
                Hero(
                  tag:'heroicon',
                                  child: Icon(
                    Icons.textsms,
                    size: 100,
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
                Text(
                  "World's most private chatting app".toUpperCase(),
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      color: Colors.deepPurple),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                ),
                Hero(
                  tag:'loginbutton',
                                  child: CustomButton(
                    text: 'Login',
                    accentColor: Colors.deepPurple,
                    onpress: (){
                      Navigator.pushReplacementNamed(context, '/login');
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Hero(
                  tag: 'signupbutton',
                                  child: CustomButton(
                    text: 'Signup',
                    accentColor: Colors.white,
                    mainColor: Colors.deepPurple,
                    onpress: (){
                      Navigator.pushReplacementNamed(context, '/signup');
                    },
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                Text('Made with ♥ by ishandeveloper')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
