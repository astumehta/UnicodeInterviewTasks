// ignore_for_file: unused_import

import 'dart:convert';
import 'dart:html';

import 'package:example/Currency_Converter_Material_Page.dart';
import 'package:example/contactsscreen.dart';
import 'package:example/model/weathermodel.dart';
import 'package:example/profilescreen.dart';
import 'package:example/secrets.dart';
import 'package:flutter/material.dart';
import 'package:example/HourlyWeather.dart';
import 'package:example/Additional.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:http/http.dart' as http;

class WeatherScreen extends StatefulWidget {
  final String cityname;
  const WeatherScreen({super.key,required this.cityname});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  double temp=0;
  String time1="";
  double temp1=0;
  var t1=0;
  double temp2=0;
  var t2=0;
  double temp3=0;
  var t3=0;
  double temp4=0;
  var t4=0;
  double temp5=0;
  var t5=0;
  var y=0;
  double temp6=0;
  var t6=0;
  double temp7=0;
  var t7=0;
  int humidity=0;
  double windspeed=0;
  int pressure=0;
  String weath="";
  String imagestring="";
  String backdrop="";
  String backdropdescription="";
  String icon1="";
  @override
  void initState() {
        getCurrentWeather();
    super.initState();

  }
// ignore: body_might_complete_normally_nullable
Future <WeatherModel?>getCurrentWeather() async {
  final String cityname1=widget.cityname;
  final res=await http.get(
  Uri.parse(
    "https://api.openweathermap.org/data/2.5/forecast?q=$cityname1&APPID=f23c50611adde2284c87e599966892a5"
           ),
);
final  data=await jsonDecode(res.body);
setState(() {
  
  temp=data['list'][0]['main']['temp']-273.15;
  
  y=temp.toInt();
  
  temp1=data['list'][1]['main']['temp']-273.15;
  t1=temp1.toInt();
  temp2=data['list'][2]['main']['temp']-273.15;
  t2=temp2.toInt();
  temp3=data['list'][3]['main']['temp']-273.15;
  t3=temp3.toInt();
  temp4=data['list'][4]['main']['temp']-273.15;
  t4=temp4.toInt();
  temp5=data['list'][5]['main']['temp']-273.15;
  t5=temp5.toInt();
  temp6=data['list'][6]['main']['temp']-273.15;
  t6=temp6.toInt();
  temp7=data['list'][7]['main']['temp']-273.15;
  t7=temp7.toInt();
  humidity=data['list'][0]['main']['humidity'];
  windspeed=data['list'][0]['wind']['speed'];
  pressure=data['list'][0]['main']['pressure'];
  weath=data['list'][0]['weather'][0]['main'];
  imagestring=data['list'][0]['weather'][0]['main'];
  backdropdescription=data['list'][0]['weather'][0]['description'];
  if(imagestring=="Rain")
  {
backdrop="images/rain.jpg";
  }
  if(imagestring=="Clouds")
  {   
    if(backdropdescription=="few clouds")
    {
      backdrop="images/istockphoto-1310822348-612x612.jpg";
    }
    if(backdropdescription=="broken clouds")
    {
      backdrop="images/9481483-scattered-clouds-on-blue-sky.jpg";
    }
  }

  if(imagestring=="Rain")
  {
    icon1="water_drop";
  }
  else
  {
    icon1="cloud";
  }
  
  
  
});

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
          color: Colors.black 
        ),
                ),
        centerTitle: true,
        
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
              MaterialPageRoute(builder: (context) => WeatherScreen(cityname: widget.cityname,)),
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
    body: Container(
      
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage(backdrop),fit: BoxFit.fill)),
      child:  Padding(
        
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                //gap
                const SizedBox(height: 5,),
              
            
              
              
                //main card
                SizedBox(
                  width: double.maxFinite,
                  height: 250,
                  
                  child: Card(
                    elevation: 20,
                    
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50)),),
                    child: Column(
                      children: [
                          
                          const SizedBox(height: 15,),
                          Text(widget.cityname.toUpperCase(),style: const TextStyle(fontSize: 20),),
                          const SizedBox(height: 15,),
                          Text("$y °C",style: const TextStyle(fontSize: 40,fontWeight: FontWeight.normal),),
                          const SizedBox(height: 20,),
                          const Icon(Icons.cloud,size: 60,color: Color.fromARGB(255, 172, 167, 153),),
                          Text(weath,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.normal),)
                
                      ],
                    ),
                  ),
                ),
                
                
                
                
                
                
                
                //gap
                const SizedBox(height: 10,),
            
                const Align(alignment: Alignment.centerLeft,child: Text("Weather forecast",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),

            
                const SizedBox(height: 20,),
                //weather cards
                
                
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  
                  children: [
                    HourlyWeather(time: "18:00",icon1: Icons.cloud,temp: t1.toString(),degree: "°C",),
                    HourlyWeather(time: "21:00",icon1: Icons.sunny,temp: t2.toString(),degree: "°C",),
                    HourlyWeather(time: "00:00",icon1: Icons.water_drop_sharp,temp: t3.toString(),degree: "°C",),
                    HourlyWeather(time: "03:00",icon1: Icons.sunny,temp: t4.toString(),degree: "°C",),
                    HourlyWeather(time: "06:00",icon1: Icons.cloud,temp: t5.toString(),degree: "°C",),
                    HourlyWeather(time: "09:00",icon1: Icons.water_drop_sharp,temp: t6.toString(),degree: "°C",),
                    HourlyWeather(time: "12:00",icon1: Icons.cloud,temp: t7.toString(),degree: "°C",),
                    
              
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



