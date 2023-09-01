// ignore_for_file: unused_import

import 'dart:convert';

import 'package:example/contactsscreen.dart';
import 'package:example/profilescreen.dart';
import 'package:example/secrets.dart';
import 'package:flutter/material.dart';
import 'package:example/HourlyWeather.dart';
import 'package:example/Additional.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:http/http.dart' as http;

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  double temp=0;
  double humidity=0;
  double windspeed=0;
  double pressure=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
            getCurrentWeather();
  }
Future getCurrentWeather() async {
  


try{
  final res=await http.get(
  Uri.parse(
    "https://api.openweathermap.org/data/2.5/forecast?q=mumbai&APPID=f23c50611adde2284c87e599966892a5"
           ),
);
final data=jsonDecode(res.body);
if(data['cod']!=200)
{
  throw "An unexpected error occured!";
}
setState(() {
  temp=data['list']['main']['temp'];
  humidity=data['list'][0]['main']['humidity'];
  windspeed=data['list'][0]['wind']['speed'];
  pressure=data['list'][0]['main']['pressure'];
  temp=data['list'][0]['main']['temp'];
  humidity=data['list'][0]['main']['humidity'];
});
}
catch(e) {
e.toString();
}
}


  @override
  Widget build(BuildContext context) {

    // ignore: unused_local_variable
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("WEATHERNOW",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20, 
        ),
                ),
        centerTitle: true,
        
        backgroundColor: const Color.fromARGB(255, 4, 4, 4),
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
    body: Container(
      decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("images/dark.jpg"),fit: BoxFit.fitHeight)),
      child:  Padding(
        
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                //gap
                const SizedBox(height: 20,),
              
              
              
              
                //main card
                SizedBox(
                  width: double.maxFinite,
                  height: 280,
                  
                  child: Card(
                    elevation: 20,
                    
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50)),),
                    child: Column(
                      children: [
                          const SizedBox(height: 40,),
                          Text("$temp °C",style: const TextStyle(fontSize: 40,fontWeight: FontWeight.normal),),
                          const SizedBox(height: 40,),
                          const Icon(Icons.cloud,
                          size: 80,),
                          const Text("Rain",style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal),)
                
                      ],
                    ),
                  ),
                ),
                
                
                
                
                
                
                
                //gap
                const SizedBox(height: 10,),
            
                const Align(alignment: Alignment.centerLeft,child: Text("Weather forecast",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
            
            
                const SizedBox(height: 20,),
                //weather cards
                
                
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  
                  children: [
                    HourlyWeather(time: "09:00",icon1: Icons.cloud,temp: "302.4K",),
                    HourlyWeather(time: "10:00",icon1: Icons.sunny,temp: "301.2K",),
                    HourlyWeather(time: "11:00",icon1: Icons.water_drop_sharp,temp: "301.6K",),
                    HourlyWeather(time: "12:00",icon1: Icons.sunny,temp: "309.4K",),
                    HourlyWeather(time: "13:00",icon1: Icons.cloud,temp: "302.4K",),
                    HourlyWeather(time: "14:00",icon1: Icons.water_drop_sharp,temp: "302.4K",),
                    HourlyWeather(time: "15:00",icon1: Icons.cloud,temp: "312.1K",),
                    
              
                  ],
                ),
              )
            
            
            
            ,
                const SizedBox(height: 20,),
                //weather cards
                
                
                const Align(alignment: Alignment.centerLeft,child: Text("Additional Information",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
                const SizedBox(height: 10,),
                Row(
                  
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Additional(icon: Icons.water_drop_outlined,label: "Humidity",value: "$humidity %",),
                    Additional(icon: Icons.air,label: "Wind Speed",value: "$windspeed km/hr",),
                    Additional(icon: Icons.beach_access,label: "Pressure",value: "$pressure hPa",),
                  ],
                  
                )
              
            ],
          ),
        ),
      ),
    ),
    );
  }
}



