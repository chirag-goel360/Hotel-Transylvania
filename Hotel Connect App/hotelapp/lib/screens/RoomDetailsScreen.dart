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
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                child: Hero(
                    tag: widget.url,
                    child: Image.network(
                      widget.url,
                      fit: BoxFit.cover,
                    ))),
          ),
          Text("About the room:\n Our research into hotel guests' online behaviour shows that alarmingly often they have problems deciding which room to choose.",style: TextStyle(
            fontSize: 30,
            fontWeight:FontWeight.w600
          ),),

          TextButton(onPressed: (){}, child: Text("Book Now"))
        ],
      ),
    );
  }
}
