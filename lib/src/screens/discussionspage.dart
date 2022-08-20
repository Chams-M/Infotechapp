import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DiscussionsPage extends StatefulWidget {
  const DiscussionsPage({Key? key}) : super(key: key);

  @override
  State<DiscussionsPage> createState() => _DiscussionsPageState();
}

class _DiscussionsPageState extends State<DiscussionsPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Text("Discussions Page")
    );
  }
}