import 'package:flutter/material.dart';
import 'package:pinkerest/screens/allProducts.dart';
import 'package:flutter/services.dart';


class registerPage extends StatefulWidget {
  const registerPage({Key? key});

  @override
  State<registerPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<registerPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  double sliderVal = 22;
  bool registerPress = false;
 // bool v2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 203, 219),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 60, right: 60, top: 37),
                  height: 300,
                  width: 340,
                  child: Image.asset("images/welcome.png"),
                ),
                SizedBox(height: 7),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'First name is required';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: "First name:",
                            labelStyle:
                            TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                           // suffixIcon: Icon(Icons.person),
                            //iconColor: Colors.black,
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(width: 14.0),
                      Expanded(
                        child: TextFormField(
                          validator: (value,) {
                            if (value == null || value.isEmpty) {
                              return 'Last name is required';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: "Last name:",
                            labelStyle:
                            TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                            //suffixIcon: Icon(Icons.person),
                           // iconColor: Colors.black,
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email address is required';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: "Email Address:",
                      labelStyle:
                      TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      suffixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextFormField(
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: "Phone number:",
                      labelStyle:
                      TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      suffixIcon: Icon(Icons.phone),
                      iconColor: Colors.black,
                      hintText: "Enter contact Number",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),

                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Age: ",
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 83, 82, 82)),
                    ),
                    Slider(
                      min: 18,
                      max: 60,
                      activeColor: const Color.fromARGB(255, 220, 139, 166),
                      inactiveColor: const Color.fromARGB(255, 104, 94, 94),
                      value: sliderVal,
                      onChanged: (x) {
                        setState(() {
                          sliderVal = x;
                        });
                      },
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: const Color.fromARGB(255, 67, 63, 63),
                      foregroundColor: const Color.fromARGB(255, 247, 186, 207),
                      child: Text("${sliderVal.round()}"),
                    )
                  ],
                ),
                SizedBox(height: 15),
                InkWell(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      registerPress = true;
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (_) => allProducts()),
                      );
                    }
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    color: registerPress ? Colors.black : const Color.fromARGB(255, 49, 47, 47),
                    width: double.infinity,
                    height: 50,
                    child: Center(
                      child: Text(
                        "Register",
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 175, 232)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
