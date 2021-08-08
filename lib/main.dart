import 'package:flutter/material.dart';
import 'package:task1/Header.dart';
import 'package:task1/AppDrawer.dart';
import 'MyRow.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            Header(),
            MyRow(image1: "assets/images/1.jpg",
                  text1: "مجلة الاقتصاد",
                  image2: "assets/images/2.jpg",
                  text2: "مجلة التكنولوجيا"
            ),
            MyRow(image1: "assets/images/3.jpg",
                text1: "مجلة الرياضة",
                image2: "assets/images/4.jpg",
                text2: "مجلة السياحة"
            ),
            MyRow(image1: "assets/images/5.jpg",
                text1: "مجلة السيارات",
                image2: "assets/images/6.jpg",
                text2: "مجلة السياسة"
            ),
            MyRow(image1: "assets/images/7.jpg",
                text1: "مج",
                image2: "assets/images/8.jpg",
                text2: "مجلة الطبخ"
            ),
            MyRow(image1: "assets/images/9.jpg",
                text1: "مجلة العلوم",
                image2: "assets/images/10.jpg",
                text2: "مجلة حواء"
            ),
          ],
        ),

      ),
      drawer: AppDrawer(),
    );
  }
}
