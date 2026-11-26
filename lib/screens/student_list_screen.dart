import 'package:flutter/material.dart';
import '../student.dart';

String name = "Karol Raphael S. Pal";
String course = "BSIT-3";
int age = 21;
String birthdate = "April 28, 2005";
String hobby = "Sleeping";
double height = 5.1;
bool studentsStatus = true;
String variableName = "assets/images/image.png";

class StudentListScreen extends StatefulWidget {
  const StudentListScreen({super.key});

  @override
  State<StudentListScreen> createState() => _StudentListScreenState();
}

class _StudentListScreenState extends State<StudentListScreen>{

  bool _isLoading =  true ;

 @override

 void initState(){
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
        setState(() {
          _isLoading = false;
        });
      });
    }

    void restoreStudents() {
    setState(() {
      _isLoading = true;
    });

    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        students = buildStudents();
        students.sort((a, b) => (a.name ?? "Unknown Student")
            .toLowerCase()
            .compareTo((b.name ?? "Unknown Student").toLowerCase()));
        _isLoading = false;
      });
    });
  }


  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: const Color.fromARGB(255, 9, 46, 109),
        floatingActionButton: FloatingActionButton.extended(
        backgroundColor: const Color.fromARGB(255, 129, 190, 240),
        onPressed: () {
        Navigator.pushNamed(context, '/add-student');
        },
        icon: Icon(
          Icons.add,
          color: const Color.fromARGB(255, 10, 70, 119),
        ),
        label: Text(
          'Add Student',
          style: TextStyle(
            color: const Color.fromARGB(255, 10, 70, 119),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
         body: _isLoading
            ? const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(
                      color: Color.fromARGB(255, 164, 211, 250),
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Loading Student Directory...",
                      style: TextStyle(
                        fontSize: 18,
                        color: const Color.fromARGB(255, 186, 220, 247),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              )
              : students.isEmpty
              ? Center(
                child: Card(
                  color: const Color.fromARGB(255, 164, 211, 250),
                  elevation: 12,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 30),
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
                          "No student found.",
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

                        SizedBox(height: 15),
                        ElevatedButton(
                           style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(255, 129, 190, 240),
                            ),
                          onPressed: () {
                            restoreStudents();
                          },
                          child: Text(
                          "Restore Students",
                            style: TextStyle(
                             fontSize: 12,
                             color: Color.fromARGB(255, 10, 70, 119),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), 
                ),
              )
          : ListView.builder(
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

            final student = students[index - 2];

            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 70, vertical: 1),
              child: GestureDetector(
               onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/student-details',
                    arguments: student,
                  ).then((value) {
                    setState(() {});
                  });
                },
              child: Card(
                color: student.isFavorite
                ? const Color.fromARGB(255, 255, 230, 150)
                : const Color.fromARGB(255, 164, 211, 250),
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

                            
                            if (student.isFavorite)
                              Text(
                                "★ Favorite",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                                         
                              if (student.isActive)
                                Text(
                                  "Active",
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),
                                ),

                              SizedBox(height: 10),
                            
                            Wrap(
                              spacing: 8,
                              children: [
                               
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                     backgroundColor: const Color.fromARGB(255, 129, 190, 240),
                                  ),
                                  onPressed: () {
                                     setState(() {
                                      student.isFavorite = !student.isFavorite;
                                    });
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                       student.isFavorite ? Icons.star : Icons.favorite_border,
                                       color: student.isFavorite ? Colors.amber : Colors.blue,
                                       size: 16,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        student.isFavorite ? 'Favorited!' : 'Favorite',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: const Color.fromARGB(255, 10, 70, 119),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),


                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                     backgroundColor: const Color.fromARGB(255, 129, 190, 240),
                                  ),
                                  onPressed: () {
                                    print('Edit button was pressed!');
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          backgroundColor: const Color.fromARGB(255, 164, 211, 250),
                                          title: Text('${student.name ?? "Unknown Student"}',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: const Color.fromARGB(255, 10, 70, 119),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          content: Text('Edit button was pressed!',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: const Color.fromARGB(255, 10, 70, 119),
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  child: Text('Edit',
                                  style: TextStyle(
                                    fontSize: 10,
                                     color: const Color.fromARGB(255, 10, 70, 119),
                                       fontWeight: FontWeight.bold,
                                  ),
                                  ),
                                ),
                                
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromARGB(255, 129, 190, 240),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                     students.remove(student);
                                    });
                                  },
                                  child: Text(
                                    'Delete',
                                    style: TextStyle(
                                     fontSize: 10,
                                     color: const Color.fromARGB(255, 10, 70, 119),
                                     fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),

                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(255, 129, 190, 240),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      student.isActive = !student.isActive;
                                    });

                                    if (!student.isActive){
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            backgroundColor: const Color.fromARGB(255, 164, 211, 240),
                                            title: Text(
                                              '${student.name ?? "Unknown Student"}',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: const Color.fromARGB(255, 10, 70, 119),
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            content: Text(
                                              student.isActive ? 'Active' : 'Inactive',
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: const Color.fromARGB(255, 10, 70, 119),
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          );  
                                        },   
                                      );
                                    }
                                  },
                                  child: Text(
                                  student.isActive ? 'Set Inactive' : 'Set Active',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: const Color.fromARGB(255, 10, 70, 119),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                                
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ),
            );
          },
        ),
      );
  }
}