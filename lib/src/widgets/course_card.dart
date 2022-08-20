import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// TODO: display fees and rating

Widget CourseCard(data,index) => SizedBox(
  
  child:   Container(
  
    width: 300,
  
    decoration: BoxDecoration(
  
      
  
     color: Color.fromARGB(255, 243, 237, 237),
  
      borderRadius: BorderRadius.all(Radius.circular(10)),
  
    ),
  
      child: Column(
      
        mainAxisSize: MainAxisSize.min,
      
        children: [
      
          Container(
      
            height: 200.0,
      
            width: 300.0,
      
            decoration: BoxDecoration(
      
              borderRadius: BorderRadius.only(topRight:Radius.circular(10), topLeft: Radius.circular(10)),
      
              image: DecorationImage(
      
                image: AssetImage(
      
                  'assets/images/course.jpg'
      
                ),
      
              ),
              shape: BoxShape.rectangle,
    
            ),
      
      ),
    
      
      SizedBox(
      
         width: double.infinity,
      
        child: Padding(
      
          padding: const EdgeInsets.only(left:18),
      
          child: Text(data[index].title,
      
          textAlign: TextAlign.left,
      
          style: GoogleFonts.abel(
      
            textStyle: TextStyle(
      
              fontSize: 20,
      
              color: Color.fromARGB(255, 74, 83, 168),
      
              fontWeight: FontWeight.bold,
      
      
      
          ),),),
      
        ),
      
      ),
      
      SizedBox(
      
        width: double.infinity,
      
        child: Padding(
      
          padding: const EdgeInsets.only(left:18.0,bottom: 5),
      
          child: Text(data[index].author,
      
          style: TextStyle(
      
            fontSize: 12,
      
            fontWeight: FontWeight.bold,
      
            color: Color.fromARGB(255, 182, 176, 176)
      
          ),),
      
        ),
      
      ),
      
       SizedBox(
      
         width: double.infinity,
      
         child: Padding(
      
           padding: const EdgeInsets.only(left:18.0,bottom: 5),
      
             child: Row(
      
              children: [
      
                Container(
      
                  width: 80,
      
                  height: 25,
      
                  decoration: BoxDecoration(
      
      
      
                    color: Colors.red,
      
                    borderRadius: BorderRadius.only(topLeft:Radius.circular(10),bottomLeft:Radius.circular(10) ,topRight:Radius.circular(50), bottomRight: Radius.circular(10))
      
                  ),
      
                  child: Padding(
      
                    padding: const EdgeInsets.only(left:2.0,bottom: 5),
      
                    child: Text('best seller',
      
                    style: TextStyle(
      
                      color: Colors.white,
      
              fontSize: 15
      
      ),),
      
                  ),
      
                ),
      
      SizedBox(
      
              width: 150,
      
      ),
      
      Text('111', //TODO: display fees value + currencysymbol
      
      textAlign: TextAlign.right,
      
      style: TextStyle(
      
              fontSize: 22
      
      ),)
      
              ]),
      
           ),
      
       ),
      
        SizedBox(
      
          width: double.infinity,
      
          child: Padding(
      
            padding: const EdgeInsets.only(left:18.0),
      
            child: Row(children: [
      
              Icon(
      
                Icons.star,
      
                size: 15,
      
                color: Colors.yellow),
      
              Padding(
      
                padding: const EdgeInsets.only(right:5.0, left: 5.0),
      
                child: Text('2.2',                    //TODO: display avg_rating
      
                style: TextStyle(
      
            fontSize: 15
      
      ),),
      
              ),
      
       Text('21',style: TextStyle(                   //TODO: display total_given_by
      
            fontSize: 15
      
      ),)
      
            ],),
      
          ),
      
        )
      
        ],
      
      ),
  
  ),
);