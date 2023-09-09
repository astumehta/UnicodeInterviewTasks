



import 'dart:async';


import 'package:example/loginpage.dart';

import 'package:example/welcomeback.dart';


import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

void main()
{
  runApp(const MyApp());
}


class MyApp extends StatelessWidget
{
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context)
  {
    return  MaterialApp
    (
      
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
    
      home: const SplashScreen());
  }
}
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  //get finalemail => null;
  // ignore: constant_identifier_names
  static const String KEYLOGIN = "login";
  @override
  void initState() {
      super.initState();
      wheretogo();
  }


  //Future getValidation() async 
  //{
    //final SharedPreferences sharedPreferences= await SharedPreferences.getInstance();
    //  var obtainedemail=sharedPreferences.getString("email");
    //  setState(() {
      //  var finalemail=obtainedemail;
      //});
  //}
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Image(image: AssetImage("images/giphy.gif")))
    );
  }
  
  Future<void> wheretogo() async {
    var sharedpref = await SharedPreferences.getInstance();
    var isLoggedIn = sharedpref.getBool(KEYLOGIN);
    Timer(const Duration(seconds: 4), () {



      if(isLoggedIn!=null)
      {
          if(isLoggedIn)
          {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => welcomeBack()));
          }
          else
          {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginPage()));
          }
      }
      else
      {
         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginPage()));
      }

      
    });
  }

  

}
