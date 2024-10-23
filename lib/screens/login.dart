import 'package:flutter/material.dart';
import 'package:pinkerest/screens/allProducts.dart';
import 'package:pinkerest/screens/registerPage.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key});

  @override
  State<loginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<loginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool loginPress = false;
  bool _isPasswordVisible = false;

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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 60, right: 60, top: 50),
                  height: 300,
                  width: 340,
                  child: Image.asset("images/onlyLogo.png"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email is required';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: "Email:",
                      labelStyle:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      suffixIcon: Icon(Icons.email),
                      iconColor: Colors.black,
                      hintText: "pinkerest@gmail.com",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password is required';
                        }
                        return null;
                      },
                      obscureText: !_isPasswordVisible,
                      decoration: InputDecoration(
                        labelText: "Password:",
                        labelStyle: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                        suffixIcon: IconButton(
                          icon: Icon(_isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              _isPasswordVisible = !_isPasswordVisible;
                            });
                          },
                        ),
                        iconColor: Colors.black,
                        hintText: "Enter Your Password",
                        border: OutlineInputBorder(),
                      ),
                    )),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      loginPress = true;
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (_) => allProducts()),
                      );
                    }
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    color: (loginPress == false)
                        ? Colors.black
                        : const Color.fromARGB(255, 49, 47, 47),
                    width: double.infinity,
                    height: 50,
                    child: Center(
                      child: Text(
                        "login",
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 175, 232)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 55),
                  child: Row(
                    children: [
                      Text(
                        "don't have an account?",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (_) {
                              return registerPage();
                            }));
                          },
                          child: Text(
                            " register",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.black,
                              decorationThickness: 1.5,
                            ),
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
