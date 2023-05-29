import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../provider/weather_provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<WeatherProvider>(context,listen: false).weatherdata();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(

                gradient: LinearGradient(colors: [
              Color(0xff0066FF),
              Color(0xffFA0F0F),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            child: Center(
              child: Container(
                height: 485,
                width: 260,
                decoration: BoxDecoration(
                  color: Color(0xFF0E3311).withOpacity(0.3),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.grey, width: 5),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    SvgPicture.asset(
                      "assets/images/Group.svg",
                      height: 84,
                      width: 81,
                    ),
                    SizedBox(height: 12),
                    Text(
                      "WHEATHER",
                      style: TextStyle(
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'ir',
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    SizedBox(height: 60),
                    Text(
                      "LOGIN",
                      style: TextStyle(
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'ir',
                          fontSize: 15,
                          color: Colors.white),
                    ),
                    SizedBox(height: 60),
                    Container(
                      height: 35,
                      width: 190,
                      decoration: BoxDecoration(
                        color: Color(0xffD9D9D9).withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            SizedBox(width: 15),
                            SvgPicture.asset(
                              "assets/images/person.svg",
                              height: 20,
                              width: 20,
                            ),
                            SizedBox(width: 15),
                            Text(
                              "USERNAME",
                              style: TextStyle(
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'ir',
                                  fontSize: 15,
                                  color: Colors.white54),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      height: 35,
                      width: 190,
                      decoration: BoxDecoration(
                        color: Color(0xffD9D9D9).withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            SizedBox(width: 15),
                            SvgPicture.asset(
                              "assets/images/lock.svg",
                              height: 20,
                              width: 20,
                            ),
                            SizedBox(width: 15),
                            Text(
                              "PASSWORD",
                              style: TextStyle(
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'ir',
                                  fontSize: 15,
                                  color: Colors.white54),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'dash');
                        },
                        child: Text(
                          "without login?",
                          style: TextStyle(
                              letterSpacing: 1,
                              fontFamily: 'ir',
                              fontSize: 15,
                              color: Colors.white,
                              decoration: TextDecoration.underline),
                        ))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
