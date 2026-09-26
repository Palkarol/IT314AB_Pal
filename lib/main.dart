import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First Flutter Applocation',
     home: Scaffold(
      backgroundColor: const Color. fromARGB(255, 9, 46, 109),
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          SizedBox(
            width: 500,
            height: 400,

            child: Card(
            color: const Color.fromARGB(255, 164, 211, 250),
            elevation: 12,

            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Image.asset(
                   "assets/images/image.png",
                   width: 100,
                   height: 100,
                  ),

                  Text("Karol Raphael S. Pal",
                  style: TextStyle(
                    fontSize: 20,
                    color: const Color. fromARGB(255, 9, 46, 109),
                    fontWeight: FontWeight.bold,
                  ),
                  ),

                  Text("BSIT-3",
                  style: TextStyle(
                    fontSize: 20,
                    color: const Color. fromARGB(255, 9, 46, 109),
                    fontWeight: FontWeight.bold,
                  ),
                  ),

                  Text("My First Application",
                  style: TextStyle(
                    fontSize: 20,
                    color: const Color. fromARGB(255, 9, 46, 109),
                    fontWeight: FontWeight.bold,
                  ),
                  ), 

                  Text("August 31, 2026",
                  style: TextStyle(
                    fontSize: 20,
                    color: const Color. fromARGB(255, 9, 46, 109),
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ],
              ),
            ),
          ),
          ),

          
          
          
        ],
      ),
      ),
     ),
    );
  }
}