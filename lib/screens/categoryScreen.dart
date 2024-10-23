import 'package:flutter/material.dart';
import 'package:pinkerest/data.dart';
import 'package:pinkerest/widgets/CategoryItems.dart';

class categoryScreen extends StatefulWidget {
  const categoryScreen({super.key});

  @override
  State<categoryScreen> createState() => _categoryScreenState();
}

class _categoryScreenState extends State<categoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        //backgroundColor:Color.fromARGB(255, 249, 208, 222),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 194, 242),
          title: Text(
            "YOUR PINKEREST",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(224, 32, 31, 31)),
          ),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return categoryItems(name:"${CATEGORIES[index].name}", image: "${CATEGORIES[index].image}", id: "${CATEGORIES[index].id}");
          },
          itemCount: CATEGORIES.length,
        ));
  }
}
