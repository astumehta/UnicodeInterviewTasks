import 'package:example/Currency_Converter_Material_Page.dart';
import 'package:example/contactsscreen.dart';
import 'package:example/weather.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class City11 extends StatefulWidget {
  
  const City11({super.key});


  @override
  State<City11> createState() => _CityState();
}

class _CityState extends State<City11> {
  final TextEditingController x=TextEditingController();
  String cityname="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 60,
        title: const Center(child: Text("WeatherNOW",style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 0, 0, 0),fontWeight: FontWeight.bold),)),
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
      
      
      body: Column(
        
        children: [
          
          TextField(
                          controller: x,
                          style: const TextStyle(
                                   color: Color.fromRGBO(0,0,0,1),
                                                ),
                          decoration: 
                              const InputDecoration   (
                                
                                   hintText: "Enter City",
                                   hintStyle: TextStyle(
                                                        color: Color.fromRGBO(0,0,0,1),
                                                       ),
                                   // ignore: prefer_const_constructors
                                   prefixIcon: Icon(Icons.location_on),
                                   prefixIconColor: Color.fromRGBO(255, 0, 0, 1),                   
                                   filled: true,
                                   fillColor: Color.fromRGBO(255,255,255,1),
                                   
                                   enabledBorder: OutlineInputBorder(
                                                    
                                                    borderSide: BorderSide(
                                                      color: Color.fromARGB(255, 0, 0, 0),
                                                      width: 2.0,
                                                      style: BorderStyle.solid 
                                                                          ),
                                                    
                                                    
                                                                 
                                                                 
                                                                 ),
                                                                 focusedBorder: OutlineInputBorder(
                                                    
                                                    borderSide: BorderSide(
                                                      color: Color.fromARGB(255, 0, 0, 0),
                                                      width: 2.0,
                                                      style: BorderStyle.solid 
                                                                          ),
                                                    
                                                     
                                                                 
                                                                 
                                                                 ),
                                   
                                               ),
                          
              ),
              const SizedBox(height: 32,),
              ElevatedButton(onPressed: ()  {
            setState(() {
            cityname=x.text;
            
          });
           Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const WeatherScreen(cityname: "nagpur",)),
            );
          },
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 89, 85, 85)),
            fixedSize: MaterialStatePropertyAll(Size(double.maxFinite, 50)),
            
          ), child: const Text("Nagpur",style: TextStyle(color: Colors.black),textAlign: TextAlign.left,)
          ),
          const SizedBox(height: 10,),

          Column(
            
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(onPressed: ()  {
                
               Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const WeatherScreen(cityname: "mumbai",)),
                );
              },
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 89, 85, 85)),
                fixedSize: MaterialStatePropertyAll(Size(double.maxFinite, 50)),
                
              ), child: const Text("Mumbai",style: TextStyle(color: Colors.black),textAlign: TextAlign.left,)
              ),
              const SizedBox(height: 10,),
              ElevatedButton(onPressed: ()  {
                
               Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const WeatherScreen(cityname: "delhi",)),
                );
              },
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 89, 85, 85)),
                fixedSize: MaterialStatePropertyAll(Size(double.maxFinite, 50)),
                
              ), child: const Text("Delhi",style: TextStyle(color: Colors.black),textAlign: TextAlign.left,)
              ),
              const SizedBox(height: 10,),
              ElevatedButton(onPressed: ()  {
               Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const WeatherScreen(cityname: "chennai",)),
                );
              },
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 89, 85, 85)),
                fixedSize: MaterialStatePropertyAll(Size(double.maxFinite, 50)),
                
              ), child: const Text("Chennai",style: TextStyle(color: Colors.black,),textAlign: TextAlign.left,)
              ),
              const SizedBox(height: 10,),
              ElevatedButton(onPressed: ()  {
               Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const WeatherScreen(cityname: "London",)),
                );
              },
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 89, 85, 85)),
                fixedSize: MaterialStatePropertyAll(Size(double.maxFinite, 50)),
                
                
              ), child: const Text("London",style: TextStyle(color: Colors.black),textAlign: TextAlign.left,)
              ),
              const SizedBox(height: 40,),
              Center(
                child: ElevatedButton(onPressed: ()  {
                  setState(() {
                  cityname=x.text;
                });
                 Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WeatherScreen(cityname: cityname,)),
                  );
                },
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.black),
                  fixedSize: MaterialStatePropertyAll(Size(200, 60)),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))))
                ), child: const Text("Find Weather",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),textAlign: TextAlign.left,)
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}