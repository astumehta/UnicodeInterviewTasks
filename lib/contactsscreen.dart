import 'dart:typed_data';

import 'package:example/Currency_Converter_Material_Page.dart';
import 'package:example/city.dart';
import 'package:example/contactinfo.dart';

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
  backgroundColor: Colors.lightGreen[300],
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
              MaterialPageRoute(builder: (context) => const City11()),
            );
        
          
          },),
          GButton(icon: Icons.attach_money,text: "",onPressed:() {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CurrencyConverterMaterialPage()),
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

body: (contacts==null)? const Center(
  child: CircularProgressIndicator()):ListView.builder(
        itemCount: contacts?.length??0,
        itemBuilder: (BuildContext context, int index) {
        Uint8List? image=contacts![index].photo;
    String number= (contacts![index].phones.isNotEmpty)? contacts![index].phones.first.number : "--";
    String name1= (contacts![index].name.first.isNotEmpty)? contacts![index].name.first : "--";
    String email= (contacts![index].emails.isNotEmpty)? contacts![index].emails.toString() : "email: --";
    return ListTile(
    leading: (image==null)? const CircleAvatar(child: Icon(Icons.person),):CircleAvatar(backgroundImage: MemoryImage(image),),
title: Text(name1),
subtitle: Text(number),
onTap: () {
  Navigator.push(context, MaterialPageRoute(builder: (context) =>ContactInfo(name1: name1,number: number,image: image,email: email,) ));
  setState(() {
    number= (contacts![index].phones.isNotEmpty)? contacts![index].phones.first.number : "--";
    name1= (contacts![index].name.first.isNotEmpty)? contacts![index].name.first : "--";
    email= (contacts![index].emails.isNotEmpty)? contacts![index].emails.toString():"email: --";
  });
},

  );
},),



    );
  }
}