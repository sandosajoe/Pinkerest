import 'package:flutter/material.dart';

class categoryItems extends StatelessWidget {
  final String name;
  final String image;
  final String id;

  const categoryItems({required this.name, required this.image, required this.id});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "p", arguments: {
          "id":id,
          "name":name,
          //"image":image
        });
      },
      child: Stack(
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
                    fit: BoxFit.fill,
                    image: AssetImage(image))),
          ),
          Container(
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
              )))
        ],
      ),
    );
  }
}
