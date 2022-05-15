import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove Debug on Banner
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mehmet Çoban'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                num++;
              });
            },
            child: Text('Hey Dont Click Me '+num.toString()),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: 'No',
            )
          ],
        ),
      ),
    );
  }
}
