import 'package:flutter/material.dart';
import 'package:food_order_app1/view/page/login1.dart'; // Pastikan Anda mengganti ini dengan rute ke halaman login Anda

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Pindah ke halaman login setelah 3 detik
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Login1Page()), // Ganti dengan halaman login Anda
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf8f9fa), // Warna latar belakang yang selaras dengan login
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blueAccent.withOpacity(0.2), // Lingkaran dengan warna latar belakang
              ),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Icon(
                  Icons.rice_bowl,
                  size: 150,
                  color: Colors.blueAccent, // Warna ikon yang selaras
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Warung Makan",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent, // Warna teks yang selaras
              ),
            ),
          ],
        ),
      ),
    );
  }
}
