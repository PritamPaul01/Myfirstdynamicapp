// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, duplicate_ignore, dead_code, prefer_const_literals_to_create_immutables, unrelated_type_equality_checks, must_be_immutable

import 'package:flutter/material.dart';

import 'memePage.dart';

void main() {
  runApp(MemesFactory());
}

class MemesFactory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MemesFactory',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  SnackBar snackBar = SnackBar(
    backgroundColor: Colors.white,
    content: Text(
      'Login Failed! Try Again.',
      style: TextStyle(
        fontSize: 20,
        color: Colors.black,
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Color.fromARGB(234, 255, 238, 0),
      // ignore: prefer_const_constructors
      body: SafeArea(
        // ignore: prefer_const_constructors
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                  tag: 'logo',
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage('images/memelogo.jpg'),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                  child: Card(
                    elevation: 35,
                    child: ListTile(
                      leading: Icon(Icons.emoji_emotions_outlined),
                      trailing: Text(
                        'DANK MEMES',
                        style: TextStyle(fontSize: 25, fontFamily: 'InFl'),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: TextField(
                    controller: usernameController,
                    style: TextStyle(color: Color.fromRGBO(12, 12, 12, 1)),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.white,
                          )),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintText: 'Enter Your Username',
                      hintStyle: TextStyle(
                          color: Color.fromARGB(255, 28, 25, 243),
                          fontFamily: 'ATR',
                          fontSize: 18),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    style: TextStyle(color: Color.fromARGB(255, 14, 14, 13)),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.white,
                          )),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintText: 'Enter Your Password',
                      hintStyle: TextStyle(
                          color: Color.fromARGB(255, 28, 25, 243),
                          fontFamily: 'ATR',
                          fontSize: 18),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (usernameController.text == 'Welcome' &&
                          passwordController.text == 'Letmeinbuddy') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MemePage(),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 15,
                      ),
                      child: Text(
                        'Toh Chaliye Shuru Karte Hai',
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'OB',
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
