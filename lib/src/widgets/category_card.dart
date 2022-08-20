import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget CategoryCard(data,index) => Stack(
   
     alignment: Alignment.center,
     children:<Widget>[
      Container(
            height: 100.0,
  
            width: 120.0,
  
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.0),
              borderRadius: BorderRadius.all(Radius.circular(10)),
              image: DecorationImage(
  
                image: NetworkImage(
                    data[index].image),
                fit: BoxFit.fill,
              ),
  
              shape: BoxShape.rectangle,
  
      
  
            ),
      ),
  
           Text(data[index].name,
        textAlign: TextAlign.left,
        style: GoogleFonts.abel(
          textStyle: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,

        ),),),
  
    
  
     ]
);