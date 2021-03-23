import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter task 1",
      theme: ThemeData.light(),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool pluto = true;
  bool earth = false;
  bool mars = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(centerTitle: true,
          title: Text("task1"),),
          body: SingleChildScrollView(
            child: Center(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text(pluto ?"This is pluto": "",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20,),
              Image.network(pluto ?'https://upload.wikimedia.org/wikipedia/commons/e/ef/Pluto_in_True_Color_-_High-Res.jpg' : ""),


              Text(earth ? "this is earth": "",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Image.network(earth ? "https://media.npr.org/assets/img/2013/03/06/bluemarble3k-smaller-nasa_custom-644f0b7082d6d0f6814a9e82908569c07ea55ccb-s800-c85.jpg" : ""),


              Text(mars ? "this is mars" : "",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Image.network(mars ? "https://mars.nasa.gov/system/content_pages/main_images/418_marsglobe.jpg" : "")


            ],
            ),

      ),
          ),
      floatingActionButton: SpeedDial(
        children: [
          SpeedDialChild(
            child: Icon(Icons.accessibility),
            label: "pluto",
            onTap: (){
              setState(() {
                pluto = true;
                earth = false;
                mars = false;
              });
            }
          ),
          SpeedDialChild(
            child: Icon(Icons.access_time),
            label: "earth",
            onTap: () {
              setState(() {
                pluto = false;
                earth = true;
                mars = false;
              });
            }
          ),
          SpeedDialChild(
              child: Icon(Icons.access_time),
              label: "mars",
              onTap: () {
                setState(() {
                  pluto = false;
                  earth = false;
                  mars = true;
                });
              }
          ),
        ],

      ),


      ),

    );
  }
}
