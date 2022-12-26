import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  final String name = 'Aulia Alfiana';
  final String location = 'Magelang, Jawa Tengah';
  final String description =
      '''Seorang mahasiswi yang terlahir dari keluarga cemara di Kabupaten Magelang, Jawa Tengah. Hobinya banyak banget, such as bermain bulu tangkis, berenang, travelling, shopping, dan yang pasti healing. Rumahnya bisa dibilang deket sama Candi Borobudur, tapi dia jarang naik candi padahal hobinya healing. Makanan favoritnya juga banyak, semuanya suka apalagi kalo laper. Mahasiswi ini tertarik dengan programming dan desain.''';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'images/aulia.jpg',
              height: 200,
              width: 200,
              fit: BoxFit.fill,
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              height: 15,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Text(
                this.name,
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 16, 68, 93),
                ),
              ),
            ),
            Container(
              child: Text(
                this.location,
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
              child: Text(
                this.description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ));
  }
}
