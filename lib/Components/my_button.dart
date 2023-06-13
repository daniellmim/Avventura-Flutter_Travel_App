import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String buttonName;

  const MyButton({required this.onTap, required this.buttonName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.symmetric(horizontal: 25.0),
        decoration: BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.circular(25)
        ),
        child: Center(
          child: Text( buttonName,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
