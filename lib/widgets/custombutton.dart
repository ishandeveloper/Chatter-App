import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

final Color accentColor;
final Color mainColor;
final String text;
CustomButton({this.accentColor,this.text,this.mainColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: accentColor,
        ),
        color: mainColor,
      borderRadius: BorderRadius.circular(50)
      ),
      width: MediaQuery.of(context).size.width * 0.6,
      padding: EdgeInsets.all(15),
      child: Center(
        child: Text(
            text.toUpperCase(),
            style: TextStyle(fontFamily: 'Poppins',color: accentColor),
          ),
      ),
    );
  }
}
