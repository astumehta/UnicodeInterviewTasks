// ignore_for_file: unused_import

import 'package:example/services/preferences_service.dart';
import 'package:example/weather.dart';
import 'package:example/welcomeback.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'loginpage.dart';
class ProfileScreen extends StatefulWidget
{
  final String name;
  final String email;
  ProfileScreen({super.key,required this.name,required this.email});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  
  @override

  // ignore: dead_code
  Widget build(BuildContext context) {
    
    
    return Scaffold(
        backgroundColor:Colors.lightGreen[300] ,
        appBar: AppBar(
          
          
          toolbarHeight: 70,
          backgroundColor: Colors.black,
          actions: <Widget>
          [
          IconButton(onPressed: (){}, icon:const Icon(Icons.refresh),color: const Color.fromARGB(255, 255, 255, 255), ),
          ]        
      ),
    
        body: 
              // ignore: prefer_const_constructors
              Column(
                children: [
                  
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Column(
                      children: [
                        const SizedBox(height: 60,),
                        const Text("PROFILE",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.black,fontFamily: 'Lucida',),),
                        const SizedBox(height: 20,),
                        const CircleAvatar(
                                    radius: 130,
                                    backgroundImage: AssetImage('images/blank.jpg'),
                                    
                                          ),
                         const SizedBox(height: 20,),
                                      Text(widget.name,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),
                                      const SizedBox(height: 10,),
                                      Text(widget.email,style: const TextStyle(color: Colors.black),),
                          
const SizedBox(height: 40,),
                        ElevatedButton(onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => welcomeBack()),
            );
        
          
          },style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.black),
            fixedSize: MaterialStatePropertyAll(Size(200, 60)),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))) 
          ) ,child: const Text("Get Started",style: TextStyle(fontFamily: "Lucida",fontSize: 25),)
          ),
          
          const SizedBox(height: 20,),
          
          
          ElevatedButton(onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginPage()),
            );
          },style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.black),
            fixedSize: MaterialStatePropertyAll(Size(70, 50)),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))) 
          ) ,child: const Text("Logout",style: TextStyle(fontFamily: "Lucida",fontSize: 10),)
          ),
        

                      ],

                      
                    ),
                                     
                  ],
                    )
                ],
             
              

              
                  
            ), 
        
        
        
      
    );
  }
}