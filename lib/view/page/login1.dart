import 'package:flutter/material.dart';
import 'package:d_info/d_info.dart';
import 'package:food_order_app1/view/page/home.dart';
import 'package:food_order_app1/view/page/register.dart';
import 'package:food_order_app1/view/widget/buttonprimary.dart';
import 'package:food_order_app1/view/widget/mytextfield.dart';

class Login1Page extends StatefulWidget {
  const Login1Page({super.key});

  @override
  State<Login1Page> createState() => _Login1PageState();
}

class _Login1PageState extends State<Login1Page> {
  final _passwordController = TextEditingController();
  final _emailController = TextEditingController();

  void login() {
    String email = _emailController.text;
    String password = _passwordController.text;
    if (email == "admin" && password == "123") {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      );
    } else {
      DInfo.snackBarError(context, "Email atau password salah");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Ikon Login
                Container(
                  width: 100,
                  height: 100,
                  child: Icon(Icons.account_circle_rounded, size: 100, color: Colors.blue),
                ),
                const SizedBox(height: 30),
                const Text(
                  "Welcome Back!",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Login to your account",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 30),
                // Input Email
                Mytextfield(
                  controller: _emailController,
                  hintText: "Email",
                  icon: Icons.email,
                  obscureText: false,
                ),
                const SizedBox(height: 10),
                // Input Password
                Mytextfield(
                  controller: _passwordController,
                  hintText: "Password",
                  icon: Icons.lock,
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                // Tombol Login
                buttonPrimary(
                  buttonText: "Login",
                  onPressedActon: login,
                ),
                const SizedBox(height: 20),
                const Text('Belum punya akun?'),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterPage(),
                      ),
                    );
                  },
                  child: const Text(
                    'Daftar Sekarang',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
