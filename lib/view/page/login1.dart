import 'package:flutter/material.dart';
import 'package:d_info/d_info.dart';
import 'package:food_order_app1/view/page/home.dart';
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
        child: Center( // Gunakan Center untuk memposisikan semua widget di tengah
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50.0), // Mengatur jarak vertikal
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Logo atau Ikon
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
                  // Input Field untuk Email
                  Mytextfield(
                    controller: _emailController,
                    hintText: "Email",
                    icon: Icons.email,
                    obscureText: false,
                  ),
                  const SizedBox(height: 10),
                  // Input Field untuk Password
                  Mytextfield(
                    controller: _passwordController,
                    hintText: "Password",
                    icon: Icons.password,
                    obscureText: true,
                  ),
                  const SizedBox(height: 10),
                  // Tombol Login
                  buttonPrimary(
                    buttonText: "Login",
                    onPressedActon: login,
                  ),
                  const SizedBox(height: 20),
                  // Tombol Login dengan Google
                  ElevatedButton(
                    onPressed: () {
                      // Logika untuk login menggunakan Google
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 245, 245, 245), // Menggunakan backgroundColor
                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          'https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-1024.png',
                          height: 20,
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          'Login with Google',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Teks untuk mendaftar
                  const Text('Belum punya akun?'),
                  TextButton(
                    onPressed: () {
                      // Navigasi ke halaman pendaftaran
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
      ),
    );
  }
}
