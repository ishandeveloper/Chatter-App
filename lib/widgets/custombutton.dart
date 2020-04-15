import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color accentColor;
  final Color mainColor;
  final String text;
  final Function onpress;
  CustomButton({this.accentColor, this.text, this.mainColor, this.onpress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
              color: accentColor,
            ),
            color: mainColor,
            borderRadius: BorderRadius.circular(50)),
        width: MediaQuery.of(context).size.width * 0.6,
        padding: EdgeInsets.all(15),
        child: Center(
          child: Text(
            text.toUpperCase(),
            style: TextStyle(fontFamily: 'Poppins', color: accentColor),
          ),
        ),
      ),
    );
  }
}
