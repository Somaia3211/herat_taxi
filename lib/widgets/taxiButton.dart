import 'package:flutter/material.dart';

class TaxiButton extends StatelessWidget{
  final String title;
  final Color color;
  final VoidCallback onPressed;
  const TaxiButton({
    Key? key,
    required this.title,
    required this.color,
    required this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Center(child: Text(title,style: TextStyle(fontSize: 25),)),
      style: TextButton.styleFrom(
        backgroundColor: color,
        primary: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50)
        ),

      ),
    );
  }
}