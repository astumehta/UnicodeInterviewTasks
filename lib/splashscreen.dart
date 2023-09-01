
import 'package:example/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  
  
  
  @override
  void initState() {
    
    super.initState();
    
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(splash: Image.asset("images/giphy.gif",), nextScreen: const LoginPage()),
    );
  }

  

}
