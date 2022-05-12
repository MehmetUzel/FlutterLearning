import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove Debug on Banner
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mehmet Çoban'),
        ),
      ),
      
    );
  }
} 