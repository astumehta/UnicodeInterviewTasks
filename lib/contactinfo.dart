import 'dart:typed_data';

import 'package:flutter/material.dart';

class ContactInfo extends StatefulWidget {
  final String name1;
  final String number;
  final Uint8List? image;
  final String email;
  const ContactInfo({super.key,required this.name1,required this.number,required this.image,required this.email});
  

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact Info"),

      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20,),
              const CircleAvatar(
                                        radius: 130,
                                        backgroundImage: AssetImage('images/blank.jpg'),
                                        
                                              ),
                                              const SizedBox(height: 20,),
                                              
                                              Align
                                              (
                                                alignment: Alignment.centerLeft,
                                                child: Text(widget.name1,style: const TextStyle(fontSize: 40),)),
                                              const SizedBox(height:20),
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(widget.number)),

                                                Align(
                                                  alignment: Alignment.centerLeft,
                                                  child: Text(widget.email,style: const TextStyle(fontSize: 40),)
                                                )
            ],
          ),
        ),
      ),



    );
  }
}