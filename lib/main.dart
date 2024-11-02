import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(backgroundColor: const Color.fromARGB(255, 108, 173, 179),
        appBar: AppBar(
          title: Center(
            child: Text(
              "Lottery App",
              style:
                  TextStyle(fontSize: 35,  fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
          backgroundColor: Colors.cyan,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text("Lottery Winning number is 4",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white))),
            SizedBox(height: 20),
            Container(
                height: 200,
                width: 250,
                decoration: BoxDecoration(
                    color: x==4? Color.fromARGB(255, 80, 202, 211)
                        :  Color.fromARGB(255, 148, 34, 114)
                        .withOpacity(0.3),
                    borderRadius: BorderRadius.circular(29)),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: x == 4? 
                   Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.done_all_rounded, color: Colors.green, size: 35),
                      SizedBox(height: 10),
                      Text(
                        "Congratualtions your have won the lottery \n Your number is $x ", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ):
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.error, color: Colors.red, size: 35),
                      SizedBox(height: 10),
                      Text(
                        "Better luck next time your number is $x \n try again", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ))
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              
              x = random.nextInt(6);
              print(x);
             setState(() {

             });
            },
            backgroundColor: const Color.fromARGB(255, 81, 189, 222),
            child: Icon(
              Icons.refresh,
              color: const Color.fromARGB(255, 255, 255, 255),
            )),
      ),
    );
  }
}
