// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DocterCard extends StatelessWidget {
  // const DocterCard({ Key? key }) : super(key: key);


  final String docterImagePath;
  final String rating;
  final String docterName;
  final String docterTitle;

  DocterCard(
    {
      required this.docterImagePath,
      required this.rating,
      required this.docterName,
      required  this.docterTitle,

      }
      );

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left:25.0),
      child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.green[300],
                      ),
                child: Column(
                  children: [

                  //picture of docter
                  ClipRRect(
                    borderRadius: BorderRadius.circular(90),
                    child: Image.asset(
                     docterImagePath,
                      height: 100,
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  //rating out of 5
                  Row(
                    children: [
                      Icon(
                        
                      Icons.star,
                      color: Colors.yellow[600],
                      ),
                      Text(
                        
                        rating,
                            style: TextStyle(
                      fontWeight: FontWeight.bold,
                      
                      ),),
                    ],

                  ),

                  SizedBox(
                    height: 10,
                  ),


                  //doctor name
                  Text(
                    docterName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      ),
                    ),
                  SizedBox(
                    height: 10,
                  ),

                  //docter title
                  Text(
                    docterTitle,
                    ),

                ],
                
                ),
        
      ),
    );
  }
}