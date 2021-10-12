import 'package:flutter/material.dart';

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
    "https://badianhotel.com/wp-content/uploads/2020/08/baglioni-hotel-london.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Hotel Transylvania'),
      ),
      body: Column(
        children: [
          Text("Hey,There hope you are doing well",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 52 ),),
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
                      child: Image.network(images[index],fit: BoxFit.fill,),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
