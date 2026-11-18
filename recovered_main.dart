import 'package:flutter/material.dart';

String name = "Karol Raphael S. Pal";
String course = "BSIT-3";
int age = 21;
String birthdate = "April 28, 2005";
String hobby = "Sleeping";
double height = 5.7;
bool studentsStatus = true;
String variableName = "assets/images/image.png";


String name1 = "Karol Raphael S. Pal";
String course1 = "BSIT-3";
int age1 = 21;
String hobby1 = "Sleeping";
String variableName1 = "assets/images/image.png";

String? name2 = null;
String course2 = "BSIT-3";
int age2 = 19;
String? hobby2 = null;
String variableName2 = "assets/images/image.png";

String name3 = "Princess Mesha Malabay";
String course3 = "BSIT-3";
int age3 = 21;
String hobby3 = "Traveling";
String variableName3 = "assets/images/image.png";

String name4 = "Crizza Mae Candar";
String course4 = "BSIT-3";
int age4 = 21;
String hobby4 = "Listening to Music";
String variableName4 = "assets/images/image.png";

String name5 = "Crizzly Iya Sabellita";
String course5 = "BSIT-3";
int age5 = 20;
String hobby5 = "Cooking";
String variableName5 = "assets/images/image.png";

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
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                            variableName,
                            width: 100,
                            height: 100,                             
                          ),

                          Text(name,
                          style: TextStyle(
                           fontSize: 20,
                           color: const Color.fromARGB(255, 10, 70, 119),
                           fontWeight: FontWeight.bold,
                          ),
                          ),

                          SizedBox(height: 10,),

                          Text(course,
                          style: TextStyle(
                           fontSize: 20,
                           color: const Color.fromARGB(255, 10, 70, 119),
                           fontWeight: FontWeight.bold,
                          ),
                          ),

                          SizedBox(height: 10,),

                          Text("My First Application",
                          style: TextStyle(
                           fontSize: 20,
                           color: const Color.fromARGB(255, 10, 70, 119),
                           fontWeight: FontWeight.bold,
                          ),
                          ),

                          SizedBox(height: 10,),

                          Text("August 31,2026",
                          style: TextStyle(
                           fontSize: 20,
                           color: const Color.fromARGB(255, 10, 70, 119),
                           fontWeight: FontWeight.bold,
                          ),
                          ),

                          SizedBox(height: 10,),

                          Text("Hobby: $hobby",
                          style: TextStyle(
                           fontSize: 20,
                           color: const Color.fromARGB(255, 10, 70, 119),
                           fontWeight: FontWeight.bold,
                          ),
                          ),

                          SizedBox(height: 10,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Age: $age",
                              style: TextStyle(
                               fontSize: 20,
                               color: const Color.fromARGB(255, 10, 70, 119),
                               fontWeight: FontWeight.bold,
                              ),
                              ),
                              
                              SizedBox(width: 10,),

                              Text("Birthdate: $birthdate",
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

                          SizedBox(height: 20,),

                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              Text("Game: Gossip Harbor",
                              style: TextStyle(
                                fontSize: 20,
                                color: const Color.fromARGB(255, 10, 70, 119),
                                fontWeight: FontWeight.bold,
                              ),
                              ),

                              SizedBox(height:10),

                              
                              Text("Food: Chicken",
                              style: TextStyle(
                                fontSize: 20,
                                color: const Color.fromARGB(255, 10, 70, 119),
                                fontWeight: FontWeight.bold,
                              ),
                              ),

                              SizedBox(height:10),

                              
                              Text("Movie: Infinity War",
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


                SizedBox(
                  width: 500,
              

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
                          width: 50,
                          height: 50,                             
                          ),

                          Text(name1,
                          style: TextStyle(
                           fontSize: 15,
                           color: const Color.fromARGB(255, 10, 70, 119),
                           fontWeight: FontWeight.bold,
                          ),
                          ),

                          SizedBox(height: 5,),

                          Text(course1,
                          style: TextStyle(
                           fontSize: 15,
                           color: const Color.fromARGB(255, 10, 70, 119),
                           fontWeight: FontWeight.bold,
                          ),
                          ),

                          SizedBox(height: 5,),

                          Text("Age: $age",
                          style: TextStyle(
                          fontSize: 15,
                          color: const Color.fromARGB(255, 10, 70, 119),
                          fontWeight: FontWeight.bold,
                           ),
                           ),

                          SizedBox(height: 5,),

                          Text("Hobby: $hobby",
                          style: TextStyle(
                           fontSize: 15,
                           color: const Color.fromARGB(255, 10, 70, 119),
                           fontWeight: FontWeight.bold,
                          ),
                          ),
                        ],
           
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  width: 500,
              

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
                          width: 50,
                          height: 50,                             
                          ),

                          Text(name2 ?? "unknown",
                          style: TextStyle(
                           fontSize: 15,
                           color: const Color.fromARGB(255, 10, 70, 119),
                           fontWeight: FontWeight.bold,
                          ),
                          ),

                          SizedBox(height: 5,),

                          Text(course2,
                          style: TextStyle(
                           fontSize: 15,
                           color: const Color.fromARGB(255, 10, 70, 119),
                           fontWeight: FontWeight.bold,
                          ),
                          ),

                          SizedBox(height: 5,),

                          Text("Age: $age2",
                          style: TextStyle(
                          fontSize: 15,
                          color: const Color.fromARGB(255, 10, 70, 119),
                          fontWeight: FontWeight.bold,
                           ),
                           ),

                          SizedBox(height: 5,),

                          Text("Hobby: ${hobby2 ?? "No hobby"}",
                          style: TextStyle(
                           fontSize: 15,
                           color: const Color.fromARGB(255, 10, 70, 119),
                           fontWeight: FontWeight.bold,
                          ),
                          ),
                        ],
           
                      ),
                    ),
                  ),
                ),


                SizedBox(
                  width: 500,
              

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
                          width: 50,
                          height: 50,                             
                          ),

                          Text(name3,
                          style: TextStyle(
                           fontSize: 15,
                           color: const Color.fromARGB(255, 10, 70, 119),
                           fontWeight: FontWeight.bold,
                          ),
                          ),

                          SizedBox(height: 5,),

                          Text(course3,
                          style: TextStyle(
                           fontSize: 15,
                           color: const Color.fromARGB(255, 10, 70, 119),
                           fontWeight: FontWeight.bold,
                          ),
                          ),

                          SizedBox(height: 5,),

                          Text("Age: $age3",
                          style: TextStyle(
                          fontSize: 15,
                          color: const Color.fromARGB(255, 10, 70, 119),
                          fontWeight: FontWeight.bold,
                           ),
                           ),

                          SizedBox(height: 5,),

                          Text("Hobby: $hobby3",
                          style: TextStyle(
                           fontSize: 15,
                           color: const Color.fromARGB(255, 10, 70, 119),
                           fontWeight: FontWeight.bold,
                          ),
                          ),
                        ],
           
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  width: 500,
              

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
                          width: 50,
                          height: 50,                             
                          ),

                          Text(name4,
                          style: TextStyle(
                           fontSize: 15,
                           color: const Color.fromARGB(255, 10, 70, 119),
                           fontWeight: FontWeight.bold,
                          ),
                          ),

                          SizedBox(height: 5,),

                          Text(course4,
                          style: TextStyle(
                           fontSize: 15,
                           color: const Color.fromARGB(255, 10, 70, 119),
                           fontWeight: FontWeight.bold,
                          ),
                          ),

                          SizedBox(height: 5,),

                          Text("Age: $age4",
                          style: TextStyle(
                          fontSize: 15,
                          color: const Color.fromARGB(255, 10, 70, 119),
                          fontWeight: FontWeight.bold,
                           ),
                           ),

                          SizedBox(height: 5,),

                          Text("Hobby: $hobby4",
                          style: TextStyle(
                           fontSize: 15,
                           color: const Color.fromARGB(255, 10, 70, 119),
                           fontWeight: FontWeight.bold,
                          ),
                          ),
                        ],
           
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  width: 500,
              

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
                          width: 50,
                          height: 50,                             
                          ),

                          Text(name5,
                          style: TextStyle(
                           fontSize: 15,
                           color: const Color.fromARGB(255, 10, 70, 119),
                           fontWeight: FontWeight.bold,
                          ),
                          ),

                          SizedBox(height: 5,),

                          Text(course5,
                          style: TextStyle(
                           fontSize: 15,
                           color: const Color.fromARGB(255, 10, 70, 119),
                           fontWeight: FontWeight.bold,
                          ),
                          ),

                          SizedBox(height: 5,),

                          Text("Age: $age5",
                          style: TextStyle(
                          fontSize: 15,
                          color: const Color.fromARGB(255, 10, 70, 119),
                          fontWeight: FontWeight.bold,
                           ),
                           ),

                          SizedBox(height: 5,),

                          Text("Hobby: $hobby5",
                          style: TextStyle(
                           fontSize: 15,
                           color: const Color.fromARGB(255, 10, 70, 119),
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
      ),
    );
  }
}