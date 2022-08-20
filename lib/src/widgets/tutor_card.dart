// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

Widget TutorCard(data,index) => Container(
   height: 250,
  child:   Expanded(
    child: Column(
    mainAxisSize: MainAxisSize.min,
      children: [
    
            Container(
    
        
    
              height: 100.0,
    
        
    
              width: 120.0,
    
        
    
              decoration: BoxDecoration(
    
        
    
                image: DecorationImage(
    
        
    
                  image: NetworkImage(
    
        
    
                      data[index].image),
    
        
    
                  fit: BoxFit.fill,
    
        
    
                ),
    
        
    
                shape: BoxShape.circle,
    
        
    
              ),
  
    
            ),
    
            Divider(height: 10,),
    
            Text(data[index].name)
    
           // Text(data[index].name)
    
      ],
    
    ),
  ),
);

     