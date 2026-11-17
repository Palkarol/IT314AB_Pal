import 'package:flutter/material.dart';

String name = "Karol Raphael S. Pal";
String course = "BSIT-3";
int age = 21;
String birthdate = "April 28, 2005";
String hobby = "Sleeping";
double height = 5.1;
bool studentsStatus = true;
String variableName = "assets/images/image.png";

class Student {
  final String image;
  final String? name;
  final String course;
  final int yearLevel;
  final int age;
  final String? hobby;
  final String studentId;
  final String email;
  final String favoritesSubjects;

  Student({
    required this.image,
    this.name,
    required this.course,
    required this.yearLevel,
    required this.age,
    this.hobby,
    required this.studentId,
    required this.email,
    required this.favoritesSubjects,
  });
}

List<Student> students = [
  Student(
    image: "assets/images/karol.jpg",
    name: "Karol Raphael S. Pal",
    course: "BSIT",
    yearLevel: 3,
    age: 21,
    hobby: "Sleeping",
    studentId: "04282005",
    email: "palkarolsasan@gmail.com",
    favoritesSubjects: "Snacks",
  ),
  Student(
    image: "assets/images/angela.jpg",
    name: null,
    course: "BSIT",
    yearLevel: 3,
    age: 19,
    hobby: null,
    studentId: "09172007",
    email: "angela@gmail.com",
    favoritesSubjects: "Chemistry",
  ),
  Student(
    image: "assets/images/mesha.jpg",
    name: "Princess Mesha Malabay",
    course: "BSIT",
    yearLevel: 3,
    age: 21,
    hobby: "Traveling",
    studentId: "12182006",
    email: "Mesha@gmail.com",
    favoritesSubjects: "English",
  ),
  Student(
    image: "assets/images/crizza.jpg",
    name: "Crizza Mae Candar",
    course: "BSIT",
    yearLevel: 3,
    age: 21,
    hobby: "Listening to Music",
    studentId: "121106",
    email: "criza@gmail.com",
    favoritesSubjects: "Math",
  ),
  Student(
    image: "assets/images/iya.jpg",
    name: "Crizzly Iya Sabellita",
    course: "BSIT",
    yearLevel: 3,
    age: 20,
    hobby: "Cooking",
    studentId: "11232005",
    email: "crizzly@gmail.com",
    favoritesSubjects: "English",
  ),
  Student(
    image: "assets/images/blue.png",
    name: "Dominique Felicity Gonzales",
    course: "BSIT",
    yearLevel: 3,
    age: 20,
    hobby: "Drawing",
    studentId: "05052006",
    email: "Dominique@gmail.com",
    favoritesSubjects: "Physics",
  ),
];



void main() {
  // students.sort((a, b) => (a.name ?? "Unknown Student")
  //   .toLowerCase()
  //   .compareTo((b.name ?? "Unknown Student").toLowerCase()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First Flutter Application',
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 9, 46, 109),
        body: ListView.builder(
          itemCount: students.isEmpty ? 3 : students.length + 2,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Center(
                child: SizedBox(
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
                          Image.asset(variableName, width: 100, height: 100),

                          Text(
                            name,
                            style: const TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 10, 70, 119),
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          SizedBox(height: 10),

                          Text(
                            course,
                            style: const TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 10, 70, 119),
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          SizedBox(height: 10),

                          Text(
                            "August 31,2026",
                            style: const TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 10, 70, 119),
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          SizedBox(height: 10),

                          Text(
                            "Hobby: $hobby",
                            style: const TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 10, 70, 119),
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          SizedBox(height: 10),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Age: $age",
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 10, 70, 119),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              SizedBox(width: 10),

                              Text(
                                "Birthdate: $birthdate",
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 10, 70, 119),
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
              );
            }

            if (index == 1) {
              return Center(
                child: SizedBox(
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

                          Text(
                            "My Favorites",
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

                          SizedBox(height: 10),

                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Game: Gossip Harbor",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: const Color.fromARGB(255, 10, 70, 119),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              SizedBox(height: 10),

                              Text(
                                "Food: Chicken",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: const Color.fromARGB(255, 10, 70, 119),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              SizedBox(height: 10),

                              Text(
                                "Movie: Infinity War",
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
              );
            }

            if (students.isEmpty) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 70, vertical: 30),
                child: Card(
                  color: const Color.fromARGB(255, 164, 211, 250),
                  elevation: 12,
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.people_outline,
                          size: 60,
                          color: Color.fromARGB(255, 10, 70, 119),
                        ),

                        SizedBox(height: 10),

                        Text(
                          "No students found.",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 10, 70, 119),
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 5),

                        Text(
                          "Student list is empty.",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 10, 70, 119),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }

            final student = students[index - 2];

            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 70, vertical: 1),
              child: Card(
                color: const Color.fromARGB(255, 164, 211, 250),
                elevation: 12,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 30,
                    right: 30,
                    top: 20,
                    bottom: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(student.image),
                      ),

                      SizedBox(width: 10),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Name: ${student.name ?? "Unknown Student"}",
                              style: TextStyle(
                                fontSize: 10,
                                color: const Color.fromARGB(255, 10, 70, 119),
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Text(
                              "Course: ${student.course}",
                              style: TextStyle(
                                fontSize: 10,
                                color: const Color.fromARGB(255, 10, 70, 119),
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Text(
                              "Year Level: ${student.yearLevel}",
                              style: TextStyle(
                                fontSize: 10,
                                color: const Color.fromARGB(255, 10, 70, 119),
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Text(
                              "Age: ${student.age}",
                              style: TextStyle(
                                fontSize: 10,
                                color: const Color.fromARGB(255, 10, 70, 119),
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Text(
                              "Hobby: ${student.hobby ?? "No hobby"}",
                              style: TextStyle(
                                fontSize: 10,
                                color: const Color.fromARGB(255, 10, 70, 119),
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Text(
                              "Student ID: ${student.studentId}",
                              style: TextStyle(
                                fontSize: 10,
                                color: const Color.fromARGB(255, 10, 70, 119),
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Text(
                              "Email: ${student.email}",
                              style: TextStyle(
                                fontSize: 10,
                                color: const Color.fromARGB(255, 10, 70, 119),
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Text(
                              "Favorite Subject: ${student.favoritesSubjects}",
                              style: TextStyle(
                                fontSize: 10,
                                color: const Color.fromARGB(255, 10, 70, 119),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
