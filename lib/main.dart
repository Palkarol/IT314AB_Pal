import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First Flutter Application',
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 9, 46, 109),
        body: Center(
          child: SingleChildScrollView(
            
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
                  padding: EdgeInsets.all(30),
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
                        fontSize: 26,
                        color: const Color.fromARGB(255, 10, 70, 119),
                        fontWeight: FontWeight.bold,
                      ),
                      ),

                      SizedBox(height: 10),
                      
                      Text("BSIT-3",
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color.fromARGB(255, 10, 70, 119),
                        fontWeight: FontWeight.w500,
                      ),
                      ),

                      SizedBox(height: 10),

                      Text("My First Flutter Application",
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color.fromARGB(255, 10, 70, 119),
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                      ),

                      SizedBox(height: 10),

                      Text("August 31, 2026",
                      style: TextStyle(
                        fontSize: 16,
                        color: const Color.fromARGB(255, 10, 70, 119),
                        fontWeight: FontWeight.bold,
                      ),
                      ),

                      SizedBox(height: 10),

                       Text("Hobby:Sleeping",
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color.fromARGB(255, 10, 70, 119),
                        fontWeight: FontWeight.bold,
                      ),
                      ),

                      SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:[
                          Text("Age: 21",
                          style: TextStyle(
                            fontSize: 20,
                            color: const Color.fromARGB(255, 10, 70, 119),
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          
                          SizedBox(width: 10),

                          Text("Birthdate: April 28, 2005",
                          style: TextStyle(
                            fontSize: 20,
                             color: const Color.fromARGB(255, 10, 70, 119),
                             fontWeight: FontWeight.bold,
                          ),
                          ),
                        ],

                      ),

                    ],
                  ),
                ),
                ),
                
              ),
              SizedBox(height: 20),

            SizedBox(
              width: 500,
              height: 400,

              child: Card(
                color: const Color.fromARGB(255, 164, 211, 250),
                elevation: 12,

                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                        Image.asset(
                          "assets/images/image.png",         
                        width: 100,
                        height: 100,    
                        ),          
                                                 
                      SizedBox(height: 10),

                    Text("My Favorites",
                    style: TextStyle(
                      fontSize: 20,
                      color: const Color.fromARGB(255, 10, 70, 119),
                      fontWeight: FontWeight.bold,
                    ),
                    ),

                    Divider(
                      color: const Color.fromARGB(255, 10, 70, 119),
                      thickness: 2,
                      indent: 90,
                      endIndent: 90,                      
                    ),

                    SizedBox(height: 20),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        Text("Game:   Gossip Harbor",
                        style: TextStyle(
                          fontSize: 20,
                          color: const Color.fromARGB(255, 10, 70, 119),
                          fontWeight: FontWeight.bold,
                        ),
                        ),

                        SizedBox(height: 10),

                        Text("Food: cake",
                        style: TextStyle(
                          fontSize: 20,
                          color: const Color.fromARGB(255, 10, 70, 119),
                          fontWeight: FontWeight.bold,
                        ),
                        ),

                        SizedBox(height: 10),

                        Text("Favorite Movie: Avengers: Inifinity War",
                        style: TextStyle(
                          fontSize: 20,
                          color: const Color.fromARGB(255, 10, 70, 119),
                          fontWeight: FontWeight.bold,
                        ),
                        ),                      

                      ],

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
      ),
    );
  }
}


