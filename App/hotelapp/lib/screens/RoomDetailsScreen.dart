import 'dart:html';

import 'package:flutter/material.dart';

class RoomDetails extends StatefulWidget {
  final String url;
  RoomDetails({Key? key, required this.url}) : super(key: key);

  @override
  _RoomDetailsState createState() => _RoomDetailsState();
}

class _RoomDetailsState extends State<RoomDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [

      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 300,
          width: MediaQuery.of(context).size.width,
          child: Hero(tag:widget.url ,child: Image.network(widget.url,fit: BoxFit.cover,))),
      )
    ],),);
  }
}