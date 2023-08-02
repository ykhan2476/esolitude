import 'package:flutter/material.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    double hght = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Scaffold(body:SafeArea(child: Column(children: [
      Container(height: hght*0.1,width: wid, child:InkWell(onTap: (){},child:Image.asset('assets/images/esol.jpg'),)),
      Container(height: hght*0.6,width: wid,color:Colors.white ,child:Stack(children: [
        Container(height: hght*0.6,width: wid,clipBehavior: Clip.antiAlias,
           decoration: BoxDecoration(borderRadius: BorderRadius.vertical(top: Radius.elliptical(180, 40))),
           child:Image.asset('assets/images/a27.jpeg',fit:BoxFit.cover,)),
        Container(height: hght*0.9,width: wid,margin: EdgeInsets.only(top: hght*0.6),child: Column(children: [
              
        ],),)
    ],)),
     ])));
  }/*Container(height: hght*0.07,width: wid*04,margin:EdgeInsets.all(20),
                 decoration: BoxDecoration(borderRadius:BorderRadiusDirectional.circular(40),color: Colors.black.withOpacity(0.5)),
                 child:TextField(obscureText:false,style:TextStyle(color: Color.fromARGB(255, 243, 240, 233)),
                 decoration:InputDecoration(hintText: ('MOVIE NAME')),)), ],)),
              Container(height: hght*0.05,width: hght*0.05,margin: EdgeInsets.only(top: hght*0.77,left: wid*0.8),child: IconButton(
                onPressed: (){}, 
                icon:Icon(Icons.arrow_circle_right,color: Colors.black,size: 50,)),)*/
}