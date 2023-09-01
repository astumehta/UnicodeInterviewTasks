import 'dart:typed_data';

import 'package:example/weather.dart';
import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
    List<Contact>? contacts;
   
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPhoneData();
  }

  void getPhoneData() async
   {
    if(await FlutterContacts.requestPermission())
    {
      contacts = await FlutterContacts.getContacts(
      withProperties: true, withPhoto: true);
      setState(() {
        
      });
    }
    
   }
@override
  Widget build(BuildContext context) {
    return  Scaffold(
appBar: AppBar(
  title: const Text("Contacts",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
  toolbarHeight: 50,
  backgroundColor: Colors.amber,
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
            GButton(icon: Icons.person,text: "Weather",onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const WeatherScreen()),
            );
        
          
          },),
            
            GButton(icon: Icons.phone,text: "Contacts",onPressed:() {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ContactsScreen()),
            );
        
          
          },),
          ],backgroundColor: Colors.black,),
        ),
      ),

body: (contacts==null)? const Center(child: CircularProgressIndicator()):ListView.builder(
  itemCount: contacts!.length,
  itemBuilder: (BuildContext context, int index) {
    Uint8List? image=contacts![index].photo;
  return ListTile(
    leading: (image==null)? const CircleAvatar(child: Icon(Icons.person),):CircleAvatar(backgroundImage: MemoryImage(image),),
title: Text(contacts![index].name.first),
  );
},),



    );
  }
}