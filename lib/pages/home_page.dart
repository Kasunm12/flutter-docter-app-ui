// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
          //app bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:25.0),
            child: Row(

              //IMAGE END
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //name
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hello",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,

                    ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "EduLIFE Solutions",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                        ),
                      ),
                  ],
                ),

                //profile picture
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[200],
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Icon(
                    Icons.person,
                     color: Colors.white,
                    )
                  ),
              ],
            ),
          )
      
          //card->How do you feel?
          //dearch bar
          //horizontal listview -> categories
          //vertical partner list
        ],
        ),
      ),
      
    );
  }
}