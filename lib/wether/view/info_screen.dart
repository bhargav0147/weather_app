import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../provider/weather_provider.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  WeatherProvider? providerFalse;
  WeatherProvider? providerTrue;
  @override
  Widget build(BuildContext context) {
    providerFalse=Provider.of<WeatherProvider>(context,listen: false);
    providerTrue=Provider.of<WeatherProvider>(context,listen: true);
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xff0066FF),
        title: Text(
          "Mon|Mar 30",
          style: TextStyle(
              letterSpacing: 1,
              fontFamily: 'ir',
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        leading: Center(
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios_new,
                size: 25,
                color: Colors.white,
              )),
        ),
        actions: [
          Center(
            child: Text("°c",
                style: TextStyle(
                    letterSpacing: 1,
                    fontFamily: 'ir',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          ),
          SizedBox(width: 10)
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xff0066FF),
          Color(0xffFA0F0F),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 45),
                      Text("Delhi",
                          style: TextStyle(
                              letterSpacing: 1,
                              fontFamily: 'ir',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Text(". . . . . ",
                          style: TextStyle(
                              letterSpacing: 1,
                              fontFamily: 'ir',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      SizedBox(height: 30),
                      Text("28°",
                          style: TextStyle(
                              letterSpacing: 1,
                              fontFamily: 'ir',
                              fontSize: 95,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Row(
                        children: [
                          Text("˅31°",
                              style: TextStyle(
                                  letterSpacing: 1,
                                  fontFamily: 'ir',
                                  fontSize: 13,
                                  color: Colors.white)),
                          SizedBox(width: 20),
                          Text("˅31°",
                              style: TextStyle(
                                  letterSpacing: 1,
                                  fontFamily: 'ir',
                                  fontSize: 13,
                                  color: Colors.white)),
                        ],
                      ),
                      SizedBox(height: 27),
                      Text("Sunny",
                          style: TextStyle(
                              letterSpacing: 1,
                              fontFamily: 'ir',
                              fontSize: 48,
                              color: Colors.white)),
                      SizedBox(height: 5),
                      Text("Feels like 29°",
                          style: TextStyle(
                              letterSpacing: 1,
                              fontFamily: 'ir',
                              fontSize: 13,
                              color: Colors.white)),
                    ],
                  ),
                ),
                Spacer(),
                SvgPicture.asset(
                  "assets/images/Vector.svg",
                  height: 250,
                  width: 250,
                ),
              ],
            ),
            SizedBox(height: 45),
            Divider(color: Colors.white.withOpacity(0.5)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text("Now",
                        style: TextStyle(
                            letterSpacing: 1,
                            fontFamily: 'ir',
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.5))),
                    SizedBox(height: 10),
                    Text("28°",
                        style: TextStyle(
                            letterSpacing: 1,
                            fontFamily: 'ir',
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ],
                ),
                Column(
                  children: [
                    Text("1pm",
                        style: TextStyle(
                            letterSpacing: 1,
                            fontFamily: 'ir',
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.5))),
                    SizedBox(height: 10),
                    Text("30°",
                        style: TextStyle(
                            letterSpacing: 1,
                            fontFamily: 'ir',
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ],
                ),
                Column(
                  children: [
                    Text("2pm",
                        style: TextStyle(
                            letterSpacing: 1,
                            fontFamily: 'ir',
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.5))),
                    SizedBox(height: 10),
                    Text("31°",
                        style: TextStyle(
                            letterSpacing: 1,
                            fontFamily: 'ir',
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ],
                ),
                Column(
                  children: [
                    Text("3pm",
                        style: TextStyle(
                            letterSpacing: 1,
                            fontFamily: 'ir',
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.5))),
                    SizedBox(height: 10),
                    Text("33°",
                        style: TextStyle(
                            letterSpacing: 1,
                            fontFamily: 'ir',
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ],
                ),
                Column(
                  children: [
                    Text("4pm",
                        style: TextStyle(
                            letterSpacing: 1,
                            fontFamily: 'ir',
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.5))),
                    SizedBox(height: 10),
                    Text("32°",
                        style: TextStyle(
                            letterSpacing: 1,
                            fontFamily: 'ir',
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ],
                ),
              ],
            ),
            Divider(color: Colors.white.withOpacity(0.5)),
            SizedBox(height: 10),
            bottom("Tuesday", 11, 1),
            SizedBox(height: 30),
            bottom("Wednesday", 17, 2),
            SizedBox(height: 30),
            bottom("Thursday", 15, 3),
            SizedBox(height: 30),
            bottom("Friday", 22, 4),
            SizedBox(height: 30),
            bottom("Saturday", 20, 5),
            SizedBox(height: 30),
            bottom("Sunday", 16, 6),
          ],
        ),
      ),
    ));
  }
  Widget bottom(String week,int last,int index)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 20,
          width: 100,
          child: Text("$week",
              style: TextStyle(
                  letterSpacing: 1,
                  fontFamily: 'ir',
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
        ),
        Container(
          height: 20,width: 25,
          child: SvgPicture.asset(
            "${providerFalse!.infoList[index].image}",
            height: 20,
            width: 20,
          ),
        ),
        Container(height: 20,width: 20,
          child: Text("${providerFalse!.infoList[index].temp}",
              style: TextStyle(
                  letterSpacing: 1,
                  fontFamily: 'ir',
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
        ),
        Container(height: 20,width: 20,
          child: Text("$last",
              style: TextStyle(
                  letterSpacing: 1,
                  fontFamily: 'ir',
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
        ),
      ],
    );
  }
}
