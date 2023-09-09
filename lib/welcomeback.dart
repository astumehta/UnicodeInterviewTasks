// ignore_for_file: unused_import

import 'package:example/Currency_Converter_Material_Page.dart';
import 'package:example/city.dart';
import 'package:example/contactsscreen.dart';
import 'package:example/model/weathermodel.dart';
import 'package:example/profilescreen.dart';
import 'package:example/weather.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'loginpage.dart';
class welcomeBack extends StatefulWidget
{
  

  @override
  State<welcomeBack> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<welcomeBack> {
  
  @override

  // ignore: dead_code
  Widget build(BuildContext context) {
    // TODO: implement build
    
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
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: GNav(
            gap: 7,
            activeColor: Colors.white,
            
            padding: const EdgeInsets.all(20),
            tabs: [
            GButton(icon: Icons.water_drop,text: "",onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  const City11()),
            );
        
          
          },),
          GButton(icon: Icons.attach_money,text: "",onPressed:() {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CurrencyConverterMaterialPage()),
            );
        
          
          },),
            
            GButton(icon: Icons.phone,text: "",onPressed:() {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ContactsScreen()),
            );
        
          
          },),
          ],backgroundColor: Colors.black,),
        ),
      ),
    
        body: 
              // ignore: prefer_const_constructors
              Column(
                children:  [
                  
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Column(
                      children: [
                        SizedBox(height: 60,),
                        Text("",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.black,fontFamily: 'Lucida',),),
                        SizedBox(height: 20,),
                        CircleAvatar(
                                    radius: 130,
                                    backgroundImage: AssetImage('images/blank.jpg'),
                                    
                                          ),
                         SizedBox(height: 20,),
                                      Text("Enjoy using our App!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),
                                      SizedBox(height: 10,),
                                      Text("Please continue",style: TextStyle(color: Colors.black),),
                                      
                          
SizedBox(height: 40,),
                        
                      ],

                      
                    ),
                                     
                  ],
                    ),
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
        
        
        
      
    );
  }
}