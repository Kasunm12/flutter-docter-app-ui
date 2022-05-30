// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

import '../util/category_card.dart';


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
                    color: Colors.green[300],
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Icon(
                    Icons.person,
                     color: Colors.white,
                    )
                  ),
              ],
            ),
          ),
      
       //======================================================================================================

      SizedBox(height: 25),
         // card->How do you feel?
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:25.0),
            child: Container(

                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                      color: Colors.green[600],
                      borderRadius: BorderRadius.circular(12),
                    ),

              child: Row(children: [
                //animation or images
                
                 Container(
                   height: 100,
                   width: 100,
                   color: Colors.deepPurple[200]),

              SizedBox(
                width: 20),
                //how do you feel + button
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text(
                      "How do you feel...?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                      ),
                      SizedBox(height: 8),
                    Text(
                      "Fill out your information right now...",                      
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.white,
                      ),
                      ),


                       SizedBox(height: 12),
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[600],
                        borderRadius: BorderRadius.circular(12),
                        ),
                      child: Center(
                      child: Text(
                        "Get Started...!",
                        style: TextStyle(
                          color:Colors.white,
                          fontWeight: FontWeight.bold,
                        fontSize: 18,
                        ),
                      
                      ),
                      ),
                      )
                  ],
                  ),
                ),

              ]),
            ),
          ),

          //=====================================================================================================
          //search bar

          SizedBox(height: 25),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                // padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.green[300],
                  borderRadius: BorderRadius.circular(12),
                  ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    // prefixIconColor: Colors.red,
                    // theme: ThemeData(primarySwatch: Colors.red),
                    border: InputBorder.none,
                    hintText: "Serach",
                  ),
                ),
              ),
            ),

            SizedBox(height: 25),
            //=====================================================================================
          //horizontal listview -> categories
          
          Container(
            height: 80,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
               CategoryCard(
                 categoryName: "Docters",
                 iconImagePath: "lib/icons/icon01.png",
                 ), //1
               CategoryCard(
                 categoryName: "Surgeon",
                 iconImagePath: "lib/icons/icon02.png",
                 ), //2
               CategoryCard(
                 categoryName: "Pharmacist",
                 iconImagePath: "lib/icons/icon03.png",
               ), //3
               
              ],
            ),
            ),
          //vertical partner list
        ],
        ),
      ),
      
    );
  }
}