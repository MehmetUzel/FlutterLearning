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
          backgroundColor: Color.fromARGB(255, 104, 216, 108),
        ),
        body: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.green,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.black,
                    primary: Color.fromARGB(255, 104, 216, 108),
                  ),
                  onPressed: () {
                    setState(() {
                      num++;
                    });
                  },
                  child: Text('Hey + Click Me ' + num.toString()),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.black,
                    primary: Color.fromARGB(255, 104, 216, 108),
                  ),
                  onPressed: () {
                    setState(() {
                      num--;
                    });
                  },
                  child: Text('Hey - Click Me ' + num.toString()),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 66, 117, 68),
          selectedItemColor: Colors.white,
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
