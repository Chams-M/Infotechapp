// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/seeallpage.dart';


class Section extends StatelessWidget {
  const Section({required this.title , required this.total});
  final String title;
  final int total;
  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    return Container(
            color: Colors.grey.shade50,
            width: _media.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      left: 25.0, right: 10, bottom: 20, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "$title",
                         textAlign: TextAlign.left,
                        style: GoogleFonts.abel(
                         textStyle: TextStyle(
                          fontSize: 25,
                          color: Color.fromARGB(255, 44, 19, 136),
                          fontWeight: FontWeight.bold,
                           ),),),

                    
                      InkWell(
                        onTap: () {
                           Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => SeeAllPage()));},
                        child: Text(
                          "See all ($total)",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                            fontWeight: FontWeight.w300
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                
              ]
            ));

  }
}