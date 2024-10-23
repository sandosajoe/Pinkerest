/*import 'package:flutter/material.dart';

class wid2 extends StatelessWidget {
  final String title;
  final String description;
  final String salary;
  final String delivary;

  const wid2(
      {required this.title,
      required this.description,
      required this.salary,
      required this.delivary});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.pushNamed(context, "p2");
          /* Navigator.pushNamed(context, "p2", arguments: {
          "title": title,
          "description": description,
          "salary":salary,
          "delivary":delivary
          //"image":image
        });*/
        },
        child: Container(
          color: const Color.fromARGB(255, 240, 180, 200),
          child: Column(children: [
            Text(
              title,
              style: TextStyle(
                  color: const Color.fromARGB(255, 168, 0, 56),
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
            Text(description),
            Text(delivary),
            Text(salary)
          ]),
        )
        /*Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            margin: EdgeInsets.all(20),
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey, // Set the border color here
                  width: 2, // Set the border width (optional)
                ),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                /*borderRadius: BorderRadius.only({
                              Radius topLeft:Radius.20 ,
                           bottomRight: 20
                          }
                            ),*/
                //color: Colors.black,
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage(image))),
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 27),
              width: double.infinity,
              height: 20,
              //color: Color.fromARGB(109, 247, 190, 209),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(109, 247, 190, 209),
              ),
              child: Center(
                  child: Text(
                name,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(195, 95, 83, 83)),
              )))
        ],
      ),*/
        );
  }
}
import 'package:flutter/material.dart';

class wid2 extends StatelessWidget {
 //final String title;
  final String description;

  const wid2({super.key, required this.description});
  //final String salary;
  //final String delivary;

  //const wid2({super.key, required this.title, required this.description, required this.salary, required this.delivary});


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "p2", arguments: {
          "description":description
          //"image":image
        });
      },
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Text(de)
          /*Container(
            margin: EdgeInsets.all(20),
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey, // Set the border color here
                  width: 2, // Set the border width (optional)
                ),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                /*borderRadius: BorderRadius.only({
                              Radius topLeft:Radius.20 ,
                           bottomRight: 20
                          }
                            ),*/
                //color: Colors.black,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    //image: AssetImage(image)
                    )),
          ),*/
          /*Container(
              margin: EdgeInsets.symmetric(horizontal: 27),
              width: double.infinity,

              height:20,
              //color: Color.fromARGB(109, 247, 190, 209),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(109, 247, 190, 209),
              ),
              child: Center(
                  child: Text(
                name,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(195, 95, 83, 83)),
              )))*/
        ],
      ),
    );
  }
}*/