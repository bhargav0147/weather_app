import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/wether/provider/weather_provider.dart';

class DashScreen extends StatefulWidget {
  const DashScreen({Key? key}) : super(key: key);

  @override
  State<DashScreen> createState() => _DashScreenState();
}

class _DashScreenState extends State<DashScreen> {
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
              "ADD CITY",
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
              Icon(
                Icons.add,
                size: 25,
                color: Colors.white,
              ),
              SizedBox(width: 10)
            ],
          ),
          body: Center(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color(0xff0066FF),
                    Color(0xffFA0F0F),
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10
                    ),
                    itemBuilder: (context, index) => box(index),
                    itemCount: providerTrue!.infoList.length,),
                ),
              ),
            ),
          ),
        ));
  }
  Widget box(int index) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, 'info');
      },
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
            color: Color(0xffD9D9D9).withOpacity(0.7),
            borderRadius: BorderRadius.circular(30)
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
            Row(
              children: [
                Text(
                  "${providerFalse!.infoList[index].temp}",
                  style: TextStyle(
                      letterSpacing: 1,
                      fontFamily: 'ir',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Spacer(),
                SvgPicture.asset(
                  "${providerFalse!.infoList[index].image}",
                  height: 30,
                  width: 30,
                ),
              ],
            ),
              Spacer(),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "${providerFalse!.infoList[index].city}",
                  style: TextStyle(
                      letterSpacing: 1,
                      fontFamily: 'ir',
                      fontSize: 20,
                      color: Colors.white),
                ),
              ),
              SizedBox(height: 5),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "${providerFalse!.infoList[index].country}",
                  style: TextStyle(
                      letterSpacing: 1,
                      fontFamily: 'ir',
                      fontSize: 20,
                      color: Colors.white54),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
