
import 'package:example/city.dart';
import 'package:example/contactsscreen.dart';

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CurrencyConverterMaterialPage extends StatefulWidget
{
  const CurrencyConverterMaterialPage({super.key});
  @override
  State<CurrencyConverterMaterialPage> createState() =>
  _CurrencyConverterMaterialPageState();
} 

class _CurrencyConverterMaterialPageState
extends State<CurrencyConverterMaterialPage>
{  
  double result=0;
  final TextEditingController blah=TextEditingController();
  @override
  Widget build(BuildContext context)
  { 
    
    
  
    
    const border= OutlineInputBorder(
                                                
                                                borderSide: BorderSide(
                                                  color: Color.fromARGB(255, 0, 0, 0),
                                                  width: 2.0,
                                                  style: BorderStyle.solid 
                                                                      ),
                                                
                                                borderRadius: BorderRadius.all(Radius.circular(60))  
                                                             
                                                             
                                                             );
    return Scaffold
      ( backgroundColor: Colors.lightGreen[300],
        
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          elevation: 0,
          title: const Text("USD to INR",style: TextStyle(color: Colors.white),),
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
          GButton(icon: Icons.attach_money,text: "Currency",onPressed:() {
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
        
          
          }),
          ],backgroundColor: Colors.black,),
        ),
      ),
        body: Center(
          // ignore: prefer_const_literals_to_create_immutables
          child: Column(
          
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
                
                
                
                //1
                const Text(
                  "Currency Converter",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Color.fromRGBO(0, 0, 0, 1),
                                  ),
                          
                    ),
              
              
              
              //2
              Padding(
                padding: const EdgeInsets.all(18.0),
                
              //3  
              child: TextField(
                  
                  controller: blah ,
                  style: const TextStyle(
                           color: Color.fromRGBO(0,0,0,1),
                                        ),
                  decoration: 
                      const InputDecoration   (
                           hintText: "Please Enter Amount in USD",
                           hintStyle: TextStyle(
                                                color: Color.fromRGBO(0,0,0,1),
                                               ),
                           // ignore: prefer_const_constructors
                           prefixIcon: Icon(Icons.attach_money_sharp),
                           prefixIconColor: Color.fromRGBO(24, 49, 24, 1),                   
                           filled: true,
                           fillColor: Color.fromRGBO(255,255,255,1),
                           focusedBorder:  border,
                           
                           
                                       ),
                  keyboardType:const TextInputType.numberWithOptions(
                           decimal: true,
                           signed: true,
                                                                 ),
                               ),
                      ),
                  
              Text(
                  "INR $result",
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      
                      color: Color.fromRGBO(0, 0, 0, 1),
                      
                                  ),
                          
                    ),    
              //4    
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: ElevatedButton(
                      
                      
                      onPressed: ()
                      {
                        
                        setState(() {
                          result=double.parse(blah.text)*83.12;
                          
                        });
                      },
                      style: const ButtonStyle(
                        elevation: MaterialStatePropertyAll(double.maxFinite),
                        backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 0, 0, 0)),
                        foregroundColor: MaterialStatePropertyAll(Colors.black),
                        fixedSize: MaterialStatePropertyAll(Size(double.maxFinite, 50),),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))))
                        
                                        ),
                      child: const Text("Click Me To Convert to INR",style: TextStyle(color: Colors.white),),
                          
                          
                          ),
              )



              ],
      ), 
    ),
  )
              ;
  }
}
