// ! I recommend you to install these extensions if they aren't already installed 
// ! Better Comments / Error Lens / Bracket Pair colorizer

import 'package:ajath_infotech_app/src/widgets/tutor_card.dart';
import 'package:flutter/material.dart';
import 'routes.dart';
import 'src/screens/home.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Home.routeName,
      routes: routes,
      title: 'Flutter Authentication',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
    );
  }
}
