import 'package:flutter/material.dart';
class Additional extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  const Additional({super.key,required this.icon,required this.label,required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
                children: [
                  Icon(icon,size: 60,),
                  const SizedBox(height: 20,),
                  Text(label,style: const TextStyle(fontWeight: FontWeight.bold),),
                  Text(value,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ],
                );
  }
}