import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:pinkerest/screens/categoryScreen.dart';
//import 'package:pinkerest/screens/waitingScreen.dart';
//import 'package:pinkerest/data.dart';

void main() {
  runApp(allProducts());
}

class allProducts extends StatefulWidget {
  const allProducts({Key? key}) : super(key: key);

  @override
  State<allProducts> createState() => _allProductsState();
}

class _allProductsState extends State<allProducts> {
  final List<String> images = [
    'images/accessories/14.jpg',
    'images/bags/14.jpg',
    'images/candles/23.jpg',
    'images/covers/6.jpg',
    'images/flowers/55.jpg',
    'images/clocks/15.jpg',
    'images/heels/10.jpg',
    'images/mugs/9.jpg',
    'images/toys/10.jpg',
    'images/perfums/19.jpg',

    
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 233, 240),
        // backgroundColor: Color.fromARGB(255, 252, 203, 219),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
          //backgroundColor: Colors.black,
          title: Text(
            'YOUR PINKEREST',
            style: TextStyle(color: Color.fromARGB(255, 244, 219, 219), fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 50,
            ),

            CarouselSlider(
              options: CarouselOptions(
                height: 500,
                autoPlay: true,
                // aspectRatio: 16 / 9,
                enlargeCenterPage: true,
                autoPlayInterval: Duration(seconds: 2),
              ),
              items: images.map((image) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 4.0),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                      child: Image.asset(
                        image,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(height: 20),

            InkWell(
              onTap: () {
               
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (_) {
                  return categoryScreen();
                }));
                //setState(() {
                //loginPress = true;
                // });
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 27),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 10, 8, 9),
                    borderRadius: BorderRadius.circular(20)),
                //margin: EdgeInsets.symmetric(horizontal: 17),

                //color: Color.fromARGB(255, 236, 160, 185),

                //color: Colors.black,
                width: double.infinity,
                height: 50,
                child: Center(
                  child: Text(
                    "continue to app",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            //ListView.builder(itemBuilder: itemBuilder),
            /*Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(20),
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        /*borderRadius: BorderRadius.only({
                            Radius topLeft:Radius.20 ,
                         bottomRight: 20
                        }
                          ),*/
                        //color: Colors.black,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("images/bags/4.jpg"))),
                  );
                },
                itemCount: CATEGORIES.length,
              ),
            )*/
          ],
        ),
      ),
    );
  }
}
