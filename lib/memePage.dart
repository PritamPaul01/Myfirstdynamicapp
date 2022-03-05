// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, file_names, camel_case_types, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MemePage extends StatefulWidget {
  @override
  State<MemePage> createState() => _MemePageState();
}

class _MemePageState extends State<MemePage> {
  int memeNumber = 1;

  void generateMeme() {
    setState(() {
      if (memeNumber != 34) {
        memeNumber++;
      } else {
        memeNumber = 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[300],
      // ignore: prefer_const_constructors
      appBar: AppBar(
        leading: Hero(
          tag: 'logo',
          child: CircleAvatar(
            backgroundImage: AssetImage('images/memelogo.jpg'),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.logout,
            ),
          ),
        ],
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: Text('Meme Factory',
            style: TextStyle(
                fontFamily: 'OB',
                color: Color.fromARGB(230, 253, 252, 252),
                fontSize: 33)),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                width: 550,
                height: 500,
                image: AssetImage(
                  'images/meme$memeNumber.jpg',
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  generateMeme();
                },
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Next Meme Plz ➟',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
