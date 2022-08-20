// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ajath_infotech_app/src/screens/chatpage.dart';
import 'package:ajath_infotech_app/src/screens/discussionspage.dart';
import 'package:ajath_infotech_app/src/screens/homepage.dart';
import 'package:ajath_infotech_app/src/screens/searchpage.dart';
import 'package:flutter/material.dart';
import '../classes/mysearchdelegate.dart';
import 'morepage.dart';

class Home extends StatefulWidget {
  static var routeName = '/home';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  final screens = [
  HomePage(),
 DiscussionsPage(),
  ChatPage(),
  SearchPage(),
  MorePage(),
  ];
 
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Find Course',
          style: TextStyle(
            fontSize: 20,
            color:Color.fromARGB(248, 201, 198, 198),
            fontWeight: FontWeight.w400,

        ),
          ), 
          
          actions: [
        
            Icon(
            Icons.settings,
            color:Color.fromARGB(248, 201, 198, 198),
            )
      ],
      leading:IconButton(
        color: Color.fromARGB(248, 201, 198, 198),
            icon: const Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: MySearchDelegate(),
              );
            }) ,
      ),
      bottomNavigationBar: NavigationBarTheme(
        data:NavigationBarThemeData(
          labelTextStyle: MaterialStateProperty.all(TextStyle(fontSize: 12,fontWeight: FontWeight.w200),)
        ),
        child: NavigationBar(
          height: 60,
          selectedIndex: index,
          onDestinationSelected: (index) => setState(()=>this.index =index),
          destinations: [
            NavigationDestination(
               icon:Icon(Icons.home_outlined),
               label:'Home',
                    ),
                NavigationDestination(
               icon:Icon(Icons.connect_without_contact),
               label:'Discussions',
                    ),
                    NavigationDestination(
               icon:Icon(Icons.chat_bubble_outline_rounded),
               label:'Chat',
                    ),
                    NavigationDestination(
               icon:Icon(Icons.search),
               label:'Search',
                    ),
                    NavigationDestination(
               icon:Icon(Icons.more_horiz),
               label:'More',
                    ),
          ],
        ),
      ),
      body: SafeArea(child: screens[index])
      );
}
