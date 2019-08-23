import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Widget Demo'),
      ),
      body: Container(
        height: 200,
        child: Stack(
          children: <Widget>[
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Image.network(
                'https://images.pexels.com/photos/46253/mt-fuji-sea-of-clouds-sunrise-46253.jpeg',
                fit: BoxFit.fill,
              ),
            ),
            Container(
              color: Colors.black.withOpacity(0.2),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(20),
              child: Text(
                'Mt Fuji',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ],
        ),
      ),

      //Center(
      //   child: Stack(
      //     children: <Widget>[
      //       Container(
      //         height: 200,
      //         width: 200,
      //         color: Colors.red,
      //       ),
      //       Container(
      //         height: 150,
      //         width: 150,
      //         color: Colors.blue,
      //       ),
      //       Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.green,
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
