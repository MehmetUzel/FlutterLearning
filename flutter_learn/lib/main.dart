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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove Debug on Banner
      home: firstPage(),
    );
  }
}

class firstPage extends StatefulWidget {
  firstPage({Key? key}) : super(key: key);

  @override
  State<firstPage> createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  int num = 0;
  int indexnum = 0;
  Color maincolor = Colors.green.shade400;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mehmet Çoban'),
        backgroundColor: maincolor,
      ),
      body: Center(
        child: indexnum == 0
            ? Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
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
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        onPrimary: Colors.black,
                        primary: Color.fromARGB(255, 104, 216, 108),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                            return const SecondPage();
                          }),
                        );
                      },
                      child: const Text('Next Page'),
                    ),
                  ],
                ),
              )
            : Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.orange,
                child: SizedBox(
                  width: 200,
                  height: 400,
                  child: Column(
                    children: [
                      Image.asset('images/IMG_0288.jpeg'),
                    ],
                  ),
                )),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: maincolor,
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
              maincolor = Colors.orange.shade400;
            } else {
              indexnum = 0;
              maincolor = Colors.green.shade400;
            }
          });
        },
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
    );
  }
}
