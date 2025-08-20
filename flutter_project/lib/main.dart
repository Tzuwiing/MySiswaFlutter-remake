import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:lottie/lottie.dart';
import 'login_page/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 🔹 Animasi Lottie
            SizedBox(
              width: 190,
              height: 190,
              child: Image.asset('images/sementara.jpg'),
            ),
            const SizedBox(height: 20),

            // 🔹 Teks dengan style
            Text(
              "My Siswa",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ],
        ),

        // Halaman tujuan
        nextScreen: const Login(),

        // Ukuran splash
        splashIconSize: 250,

        // Warna background
        backgroundColor: Colors.white,

        // 🔹 Transisi saat splash hilang
        splashTransition: SplashTransition.scaleTransition,

        // 🔹 Transisi saat pindah ke halaman berikutnya
        pageTransitionType: PageTransitionType
            .fade, // bisa ganti: rightToLeft, leftToRight, topToBottom
        // Lama splash (ms)
        duration: 3000,
      ),
    );
  }
}
