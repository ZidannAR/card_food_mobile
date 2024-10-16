import 'package:flutter/material.dart';

class buttonPrimary extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressedActon;
  const buttonPrimary({
    super.key, required this.buttonText, required this.onPressedActon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressedActon,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 8, 194, 255),
          foregroundColor: Colors.white
        ),
       child:  Text(buttonText) ),
    );
  }
}

