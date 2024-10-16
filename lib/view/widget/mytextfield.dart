import 'package:flutter/material.dart';

class Mytextfield extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData icon ;
  final bool obscureText;

  const Mytextfield({
    super.key, 
    required this.controller, 
    required this.hintText, 
    required this.icon, required this.obscureText
    });


  @override
  Widget build(BuildContext context) {
    return 
            TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: "masukan email",
                filled: true,
                fillColor: const Color.fromARGB(255, 245, 245, 245),
                prefix: Icon(icon),
                border: OutlineInputBorder(borderRadius:
                BorderRadius.circular(20))
              ),
              obscureText: obscureText,
            );
        
        
  }
}