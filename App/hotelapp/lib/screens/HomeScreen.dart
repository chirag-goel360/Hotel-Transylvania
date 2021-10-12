import 'package:flutter/material.dart';
import 'package:hotelapp/screens/RoomDetailsScreen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> images = [
    "https://www.gannett-cdn.com/-mm-/05b227ad5b8ad4e9dcb53af4f31d7fbdb7fa901b/c=0-64-2119-1259/local/-/media/USATODAY/USATODAY/2014/08/13/1407953244000-177513283.jpg",
    "https://www.eroshotels.co.in/wp-content/uploads/2018/04/606x368.jpg",
    "https://image.shutterstock.com/image-illustration/hotel-sign-stars-3d-illustration-260nw-195879770.jpg",
    "https://image.shutterstock.com/image-illustration/hotel-sign-stars-3d-illustration-260nw-195879770.jpg",
    "https://pix10.agoda.net/hotelImages/6395607/-1/9c841444ec7a198e3fc2da32077ea95b.jpg?s=1024x768"
  ];

  List<List<String>> room = [
    [
      " 1",
      "https://thumbs.dreamstime.com/b/hotel-room-beautiful-orange-sofa-included-43642330.jpg",
      "2000"
    ],
    [
      "2",
      "https://pix10.agoda.net/hotelImages/6395607/-1/9c841444ec7a198e3fc2da32077ea95b.jpg?s=1024x768",
      "3000"
    ],
    [
      "3",
      "https://www.fohlio.com/blog/wp-content/uploads/2017/12/Hotel-Interior-Design-Pschology-of-Color-Fohlio-blue-Ritz-Carlton.jpeg",
      "4000"
    ]
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Hotel Transylvania'),
      ),
      body: Column(
        children: [
          Text(
            "Hey,There hope you are doing well",
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 52),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  itemCount: images.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: Image.network(
                        images[index],
                        fit: BoxFit.fill,
                      ),
                    );
                  }),
            ),
          ),
          Text("Want to Book a room??"),
          Container(
            height: 200,
            child: ListView.builder(
                itemCount: room.length,
                itemBuilder: (BuildContext, index) {
                  return ListTile(
                    dense: true,
                    leading: Container(
                        height: 50,
                        width: 50,
                        child: Hero(
                            tag: 'room'+room[index][1], child: Image.network(room[index][1]))),
                    title: Text("Occupency:" + room[index][0]),
                    subtitle: Text("Price:" + room[index][2]),
                    trailing: TextButton(
                      child: Text('Book Now'),
                      onPressed: () {
                        Navigator.push(
                            BuildContext,
                            MaterialPageRoute(
                                builder: (context) =>
                                    RoomDetails(url: room[index][1])));
                      },
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
