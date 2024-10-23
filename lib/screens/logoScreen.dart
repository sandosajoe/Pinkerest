import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pinkerest/screens/login.dart';

/*void main() {
  runApp(logoScreen());
}
*/
class logoScreen extends StatefulWidget {
  @override
  _logoScreenState createState() => _logoScreenState();
}

class _logoScreenState extends State<logoScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  // Wait for 7 seconds and then navigate to the next page
  void startTimer() {
    Timer(Duration(seconds: 7), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => loginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246, 189, 208),
      
      body: Container(
        
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 110,
                backgroundColor:Color.fromARGB(255, 246, 189, 208),

                child:Image.asset("images/wowpng.png"),
                
              ),
              SizedBox(
                height: 23,
              ),
              Text("بتدور علي هدية؟ " ,
                style: TextStyle(
                  fontSize: 20 ,
                  fontWeight: FontWeight.bold ,
                  //color: Color.fromARGB(255, 250, 148, 182),
                  color:Colors.black,
                  // backgroundColor: Colors.black,
                ),) ,
              SizedBox(height: 6,),
              Text(".. متروحش بعيد" ,
                style: TextStyle(
                  fontSize: 26 ,
                  fontWeight: FontWeight.bold ,
                  // color: Color.fromARGB(255, 250, 148, 182),
                  color:Colors.black,
                  // backgroundColor: Colors.black,
                ),) ,

            ],
          ),
        ),
      ),

    );
  }
}












//import 'dart:async';
//import 'package:flutter/material.dart';
//import 'package:pinkerest/screens/login.dart';

/*void main() {
  runApp(logoScreen());
}
*//*
class logoScreen extends StatefulWidget {
  @override
  _logoScreenState createState() => _logoScreenState();
}

class _logoScreenState extends State<logoScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  // Wait for 7 seconds and then navigate to the next page
  void startTimer() {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => loginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246, 189, 208),
      /*appBar: AppBar(
        toolbarHeight: 70,

        title: Row(
          children: [
            Text("YOUR PINKEREST!" ,
            style: TextStyle(fontWeight: FontWeight.bold ,
             color: Color.fromARGB(255, 239, 157, 205),
             fontSize: 22),),
             Image.asset("images/appBaaar.png")
          ],
        ),
        backgroundColor: Colors.black,
      ),*/
      //backgroundColor: Colors.pink,
      body: Container(
        /*decoration: const BoxDecoration(
image: DecorationImage(
  image:AssetImage("images/candles/0b3cebce199980bc3dc9bd50aaeed595.jpg"),
  fit:BoxFit.fill
)


        ),*/
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100,
                backgroundColor: Colors.black,
                child:Image.asset("images/onlyLogo.png"),
                /* Container(
  decoration: BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),  // Shadow color
        spreadRadius: 5,  // Spread radius
        blurRadius: 7,  // Blur radius
        offset: Offset(0, 3),  // Offset in x and y directions
      ),
    ],
  ),
  child: Image.asset("'images/pint1.png'"),  // Your image widget
)*/
              ),
              SizedBox(
                height: 23,
              ),
              Text("Looking for CADEAU? " ,
                style: TextStyle(
                  fontSize: 20 ,
                  fontWeight: FontWeight.bold ,
                  color: Color.fromARGB(255, 250, 148, 182),
                  //color:Colors.white,
                  backgroundColor: Colors.black,),) ,
              SizedBox(height: 6,),
              Text("PINKEREST IS YOUR BEST CHOICE .." ,
                style: TextStyle(
                  fontSize: 20 ,
                  fontWeight: FontWeight.bold ,
                  color: Color.fromARGB(255, 250, 148, 182),
                  //color:Colors.white,
                  backgroundColor: Colors.black,),) ,

            ],
          ),
        ),
      ),

    );
  }
}*/