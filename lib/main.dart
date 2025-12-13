import 'package:flutter/material.dart';
import 'package:w2_tustapong/celsius.dart';
import 'rectangle.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routes: {
        '/': (context) => MyHomePage(),
        '/rectangle': (context) => Rectangle(),
        '/celsius': (context) => Celsius(),
      },
      initialRoute: '/',
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => Navigator.pushNamed(context, '/rectangle'),
              child: Text('คำนวนพื่นที่สี่เหลี่ยม'),
              style: TextButton.styleFrom(
                backgroundColor: Colors.grey,
                foregroundColor: Colors.white,
              ),
            ),
            SizedBox(height: 10,),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, '/celsius'),
              child: Text('คำนวนเซลเซียสเป็นฟาเรนไฮต์'),
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
