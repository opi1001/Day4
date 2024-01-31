import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20.0)),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(20.0)),
              ),
              SizedBox(
                height: 10.0,
              ),
            ],
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 50.0,
                width: 150.0,
                decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0.2, 3.0),
                        color: Colors.green,
                        blurRadius: 0.3,
                      )
                    ]),
                child: Row(
                  children: [
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(95.0),
                            bottomLeft: Radius.circular(95.0),
                            bottomRight: Radius.circular(200.0)),
                      ),
                      child: Icon(Icons.home),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Center(
                      child: Text(
                        "Home",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // body: Column(children: [
      //   TextButton(
      //       style: TextButton.styleFrom(
      //           side: BorderSide(color: Colors.black),
      //           backgroundColor: Colors.red,
      //           shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(30.0))),
      //       onPressed: () {
      //         print('My button is click');
      //       },
      //       child: Text('Save')),
      //   SizedBox(
      //     height: 10,
      //   ),
      //   OutlinedButton(
      //       style: OutlinedButton.styleFrom(),
      //       onPressed: () {},
      //       child: Text('Outlines')),
      //   SizedBox(
      //     height: 20,
      //   ),
      //   ElevatedButton(
      //       style: ElevatedButton.styleFrom(),
      //       onPressed: () {},
      //       child: Text('Elevated')),
      //   SizedBox(
      //     height: 20,
      //   ),
      //   IconButton(onPressed: () {}, icon: Icon(Icons.person)),
      //   SizedBox(
      //     height: 29.0,
      //   ),
      //   FloatingActionButton(
      //     onPressed: () {},
      //     child: Icon(Icons.add),
      //   )
      // ]),
    );
  }
}
