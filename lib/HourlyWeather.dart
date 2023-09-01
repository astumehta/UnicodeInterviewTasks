import 'package:flutter/material.dart';
class HourlyWeather extends StatelessWidget {
  final IconData icon1;
  final String time;
  final String temp;
  const HourlyWeather({super.key,required this.icon1,required this.time,required this.temp});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
              
              height: 140,
              width: 100,
              child: Card(
                elevation: 20,
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)),),
                child: Column(
                  children: [
                      const SizedBox(height: 25,),
                      Text(time,style: const TextStyle(fontSize: 15,fontWeight: FontWeight.normal),),
                      const SizedBox(height: 12,),
                      Icon(icon1,
                      size: 35,),
                      Text(temp,style: const TextStyle(fontSize: 15,fontWeight: FontWeight.normal),)
            
                  ],
                ),
              ),
               ) ;
  }
}