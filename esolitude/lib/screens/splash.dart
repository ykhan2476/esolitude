import 'dart:async';
import 'package:esolitude/screens/homescreen.dart';
import 'package:flutter/material.dart';



class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  void initState(){
    super.initState();
    _navigatehome();
 //y dusri screen k baad splash screen vps na aane k liye
  }

  _navigatehome()async{
   
    await Future.delayed(Duration(seconds: 3),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const homescreen()));
  }
  
  
  @override
  Widget build(BuildContext context) {
    double hght = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Scaffold(
       body: Scaffold(body: SafeArea(child:Stack(children: [
        
        Container(height: hght ,width: wid ,
        child: Image.asset('assets/images/splash.webp',fit:BoxFit.cover),),
        Container(height: wid*0.1,width: wid*0.1,margin: EdgeInsets.only(top: hght*0.46,left: wid*0.45),
        child: CircularProgressIndicator(),)
       ],))));
       
}
}