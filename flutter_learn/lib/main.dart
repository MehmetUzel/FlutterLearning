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
          title: const Text('Mehmet Çoban'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('Hey Dont Click Me'),
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
