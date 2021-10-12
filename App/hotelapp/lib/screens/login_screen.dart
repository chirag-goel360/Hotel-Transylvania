import 'package:flutter/material.dart';
import 'package:hotelapp/screens/HomeScreen.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.black26,
            height: 1900,
            child: RotatedBox(
              quarterTurns: 3,
              child: WaveWidget(
                duration: 1,
                config: CustomConfig(
                  gradients: [
                    [
                      Colors.purple,
                      Colors.tealAccent.shade700,
                    ],
                    [
                      Colors.teal.shade100,
                      Colors.tealAccent.shade700,
                    ],
                  ],
                  durations: [19440, 10800],
                  heightPercentages: [0.20, 0.25],
                  blur: MaskFilter.blur(
                    BlurStyle.solid,
                    10,
                  ),
                  gradientBegin: Alignment.bottomLeft,
                  gradientEnd: Alignment.topRight,
                ),
                waveAmplitude: 500,
                size: Size(
                  double.infinity,
                  double.infinity,
                ),
              ),
            ),
          ),
          ListView(
            children: <Widget>[
              Container(
                height: 450,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Login",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 26.0,
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.only(
                        left: 30,
                        right: 30,
                        top: 30,
                      ),
                      elevation: 11,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(40),
                        ),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.teal,
                          ),
                          hintText: "Email Address",
                          hintStyle: TextStyle(
                            color: Colors.black54,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(40.0),
                            ),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 16.0,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.only(
                        left: 30,
                        right: 30,
                        top: 30,
                      ),
                      elevation: 11,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(40),
                        ),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.teal,
                          ),
                          hintText: "Password",
                          hintStyle: TextStyle(
                            color: Colors.black54,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(40),
                            ),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 16.0,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(30.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            vertical: 16.0,
                          ),
                          primary: Colors.pink,
                          elevation: 11,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(40.0),
                            ),
                          ),
                        ),
                        onPressed: () {

                          Navigator.pushReplacement(context,   MaterialPageRoute(builder: (context) => HomeScreen()));

                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white70,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Don't have an account",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            primary: Colors.indigo,
                          ),
                          child: Text(
                            "SignUp",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
