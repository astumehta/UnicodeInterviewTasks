import 'package:example/profilescreen.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passsecure=true;
  String name="abc";
  String email="xyz@gmail.com";
  String password="abc";
  final TextEditingController xhh=TextEditingController();
  final TextEditingController y=TextEditingController();
  final TextEditingController z=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.amber[300],
      appBar: AppBar(
          toolbarHeight: 120,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.elliptical(70, 60))),
          backgroundColor: Colors.black,
          actions: const <Widget>
          [
            Text("HELP",style: TextStyle(fontStyle: FontStyle.normal,fontSize: 15,fontWeight: FontWeight.bold),),
            
          ],
      ),
      
      
      
      
      
      
      body: 
      Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
              children: [
                const SizedBox(height: 30,),
                  const Align
                  (alignment: Alignment.centerLeft,
                    child: Text("Create Your Account",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),)),
                  const SizedBox(height: 20,),
                  
                  TextField(
                      controller: xhh,
                      style: const TextStyle(
                               color: Color.fromRGBO(0,0,0,1),
                                            ),
                      decoration: 
                          const InputDecoration   (
                               hintText: "Enter Your Full Name",
                               hintStyle: TextStyle(
                                                    color: Color.fromRGBO(0,0,0,1),
                                                   ),
                               // ignore: prefer_const_constructors
                               prefixIcon: Icon(Icons.person_2_rounded),
                               prefixIconColor: Color.fromRGBO(24, 49, 24, 1),                   
                               filled: true,
                               fillColor: Color.fromRGBO(255,255,255,1),
                               
                               focusedBorder: OutlineInputBorder(
                                                
                                                borderSide: BorderSide(
                                                  color: Color.fromARGB(255, 0, 0, 0),
                                                  width: 2.0,
                                                  style: BorderStyle.solid 
                                                                      ),
                                                
                                                borderRadius: BorderRadius.all(Radius.circular(60))  
                                                             
                                                             
                                                             ),
                               
                                           ),
                      
          ),
          const SizedBox(height: 10,),
          TextField(
                      controller: y,
                      style: const TextStyle(
                               color: Color.fromRGBO(0,0,0,1),
                                            ),
                      decoration: 
                          const InputDecoration   (
                               hintText: "Enter Your Email Address",
                               hintStyle: TextStyle(
                                                    color: Color.fromRGBO(0,0,0,1),
                                                   ),
                               // ignore: prefer_const_constructors
                               prefixIcon: Icon(Icons.email),
                               prefixIconColor: Color.fromRGBO(24, 49, 24, 1),                   
                               filled: true,
                               fillColor: Color.fromRGBO(255,255,255,1),
                               
                               focusedBorder: OutlineInputBorder(
                                                
                                                borderSide: BorderSide(
                                                  color: Color.fromARGB(255, 0, 0, 0),
                                                  width: 2.0,
                                                  style: BorderStyle.solid 
                                                                      ),
                                                
                                                borderRadius: BorderRadius.all(Radius.circular(60))  
                                                             
                                                             
                                                             ),
                               
                                           ),
                      
          ),
          const SizedBox(height: 10,),
          TextField(obscureText: passsecure,
                      controller: z,
                      style: const TextStyle(
                               color: Color.fromRGBO(0,0,0,1),
                                            ),
                      decoration: 
                          InputDecoration   (
                            
                               hintText: "Enter Your Password",
                               hintStyle: const TextStyle(
                                                    color: Color.fromRGBO(0,0,0,1),
                                                   ),
                               // ignore: prefer_const_constructors
                               prefixIcon: Icon(Icons.lock),
                               
                               suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                     passsecure=!passsecure;
                                  });
                                 
                                },
                                child: Icon(passsecure?
                                Icons.visibility_off:Icons.visibility
                                ),
                               ),
                               prefixIconColor: const Color.fromRGBO(24, 49, 24, 1),                   
                               filled: true,
                               fillColor: const Color.fromRGBO(255,255,255,1),
                               
                               focusedBorder: const OutlineInputBorder(
                                                
                                                borderSide: BorderSide(
                                                  color: Color.fromARGB(255, 0, 0, 0),
                                                  width: 2.0,
                                                  style: BorderStyle.solid 
                                                                      ),
                                                
                                                borderRadius: BorderRadius.all(Radius.circular(60))  
                                                             
                                                             
                                                             ),
                               
                                           ),
                      
          ),
          const SizedBox(height: 30,),
          ElevatedButton(onPressed: () {


            
            
            setState(() {
            name=xhh.text;
            email=y.text;
            password=z.text;
          });
          // ignore: use_build_context_synchronously
          Navigator.push(

              context,
              MaterialPageRoute(builder: (context) => ProfileScreen(name: name,email: email,)),
            );
          },
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.black),
            fixedSize: MaterialStatePropertyAll(Size(200, 60)),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))))
          ), child: const Text("Submit")),


          const SizedBox(height: 30,),
          ElevatedButton(onPressed: () {
            
            setState(() {
            xhh.text="";
            y.text="";
            z.text="";
          });
          
          },
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.black),
            fixedSize: MaterialStatePropertyAll(Size(200, 60)),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))))
          ), child: const Text("Reset"))

          ],
              
              
              
              
              
              
              
          ),
        ),
      )
      
      






    );
  }
}