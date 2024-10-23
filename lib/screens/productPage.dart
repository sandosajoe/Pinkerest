import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:pinkerest/data.dart';
import 'package:pinkerest/models/product.dart';
//import 'package:pinkerest/widgets/CategoryItems.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    String name = data["name"];
    String id = data["id"];
    List<product> dataFilter = DUMMY_PRODUCT.where((element) {
      return element.categoryNumber.contains(id);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 250, 212, 248),
        title: Text(
          name,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(128, 12, 6, 6)),
        ),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 1.0,
        ),
        itemCount: dataFilter.length,
        itemBuilder: (BuildContext context, int index) {
          return GridTile(
            child: GestureDetector(
              onTap: () {
                // Implement flip logic here
              },
              child: FlipCard(
                  direction:
                      FlipDirection.HORIZONTAL, // Set the direction of the flip
                  front: Container(
                    //color: Colors.blue,
                    child: Center(
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                            margin: EdgeInsets.all(20),
                            width: double.infinity,
                            height: 300,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color:
                                      Colors.grey, // Set the border color here
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
                                    image: AssetImage(
                                        dataFilter[index].imageUrl))),
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
                                dataFilter[index].title,
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(195, 95, 83, 83)),
                              )))
                        ],
                      ),
                      //Text('${dataFilter[index].title}', style: TextStyle(color: Colors.white, fontSize: 24.0)
                    ),
                  ),
/////////////////////////////////////////////////////////////////////////////////////////////////////////

                  back: SingleChildScrollView(
                    child: Container(
                      margin: EdgeInsets.all(20),
                      height: 240,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6.5),
                        child: Column(
                         // mainAxisAlignment: MainAxisAlignment.spaceAround,
                         mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "${dataFilter[index].title}",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(203, 108, 100, 100),
                                  backgroundColor:
                                      Color.fromARGB(255, 250, 212, 248)),
                            ),
                            Row(
                              children: [
                                Text(
                                  "SALARY: ",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(248, 251, 192, 228)),
                                ),
                                Text(
                                  "${dataFilter[index].salary}",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(154, 58, 56, 56)),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                               Text(
                              "ABOUT:",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(248, 251, 192, 228)),
                            ),
                            Text(
                              "${dataFilter[index].description}",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(154, 58, 56, 56)),
                            ),
                              ],
                            ),
                            
                            Row(
                              children: [
                                Text(
                                  "DELIVERY TIME: ",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(248, 251, 192, 228)),
                                ),
                                Text(
                                  "${dataFilter[index].deliveryTime}",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(154, 58, 56, 56)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      //color: Color.fromARGB(109, 247, 190, 209),
                      decoration: BoxDecoration(
                        //color: Color.fromARGB(109, 247, 190, 209),
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.grey, // Set the border color here
                          width: 2, // Set the border width (optional)
                        ),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            topRight: Radius.circular(30)),
                      ),
                    ),
                  )
                  /*Container(
                  //me 
                  //height: 240,
                  //color: Colors.blue,
                  child: Center(
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                            margin: EdgeInsets.symmetric(horizontal: 27),
                            width: double.infinity,
                            //height: 150,
                            //color: Color.fromARGB(109, 247, 190, 209),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromARGB(109, 247, 190, 209),
                            ),
                            child: Center(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [Row(children: [Text(
                                      "Name:",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 99, 22, 112)),
                                    ),Text(
                                      "${dataFilter[index].title}",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(195, 95, 83, 83)),
                                    ),],)
                                    ,
                                    Row(children: [Text(
                                      "Salary:",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 99, 22, 112)),
                                    ),Text(
                                      "${dataFilter[index].salary}",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(195, 95, 83, 83)),
                                    ),]),
                                    Text(
                                      "Description:",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 99, 22, 112)),
                                    ),
                                    Text(
                                      "${dataFilter[index].description}",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(195, 95, 83, 83)),
                                    ),
                                  ]),
                            ))
                      ],
                    ),
                    //Text('${dataFilter[index].title}', style: TextStyle(color: Colors.white, fontSize: 24.0)
                  ),
                ),*/
                  ),
            ),
          );
        },
      ),

      /*body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 1.0,
        ),
        itemCount: dataFilter.length,
        itemBuilder: (BuildContext context, int index) {
          return categoryItems(
            name: dataFilter[index].title,
            image: dataFilter[index].imageUrl,
            id: dataFilter[index].id,
          );
        },
      ),*/
    );
  }
}


/*

body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 1.0,
        ),
        itemCount: dataFilter.length,
        itemBuilder: (BuildContext context, int index) {
          return GridTile(
            child: GestureDetector(
              onTap: () {
                // Implement flip logic here
              },
              child: FlipCard(
                direction: FlipDirection.HORIZONTAL, // Set the direction of the flip
                front: Container(
                  color: Colors.blue,
                  child: Center(
                    child: Text('Front $index', style: TextStyle(color: Colors.white, fontSize: 24.0)),
                  ),
                ),
                back: Container(
                  color: Colors.red,
                  child: Center(
                    child: Text('Back $index', style: TextStyle(color: Colors.white, fontSize: 24.0)),
                  ),
                ),
              ),
            ),
          );
        },
      ),

*/