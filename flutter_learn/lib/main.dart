import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int num = 0;
  int indexnum = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove Debug on Banner
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mehmet Çoban'),
        ),
        body: Center(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      num++;
                    });
                  },
                  child: Text('Hey Dont Click Me ' + num.toString()),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      num++;
                    });
                  },
                  child: Text('Hey Dont Click Me ' + num.toString()),
                ),
              ],
            ),
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
          currentIndex: indexnum,
          onTap: (int index) {
            setState(() {
              if (indexnum == 0) {
                indexnum = 1;
              } else {
                indexnum = 0;
              }
            });
          },
        ),
      ),
    );
  }
}
