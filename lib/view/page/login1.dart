import 'package:d_info/d_info.dart';
import 'package:flutter/material.dart';
import 'package:food_order_app1/view/page/home.dart';
import 'package:gap/gap.dart';

class Login1Page extends StatefulWidget {
  const Login1Page({super.key});

  @override
  State<Login1Page> createState() => _Login1PageState();
}

class _Login1PageState extends State<Login1Page> {
  final _passwordControler = TextEditingController();
  final _emailController = TextEditingController();

  login(){
    String email = _emailController.text;
    String password = _passwordControler.text;
    if(email == "admin" && password == "123"){
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        )
      );
    }else{
      DInfo.snackBarError(context,"email atau pass salah");
    }
  }
  
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Column(children: [
          Mytextfield(controller: _emailController, hintText: "email", icon: Icons.email, obscureText: false,),
          Gap(10),
          Mytextfield(controller: _passwordControler, hintText: "Password", icon: Icons.password,obscureText: true,),
          buttonPrimary(buttonText: "login", onPressedActon: login,)
        ],),
      );
  }
}

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
          backgroundColor: Colors.green,
          foregroundColor: Colors.white
        ),
       child:  Text(buttonText) ),
    );
  }
}

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
                fillColor: Colors.amber,
                prefix: Icon(icon),
                border: OutlineInputBorder(borderRadius:
                BorderRadius.circular(20))
              ),
              obscureText: obscureText,
            );
        
        
  }
}