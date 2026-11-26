import 'package:flutter/material.dart';
import 'student.dart';

class StudentDetailsScreen extends StatefulWidget {
  final Student student;

  const StudentDetailsScreen({super.key, required this.student});

  @override
  State<StudentDetailsScreen> createState() => _StudentDetailsScreenState();
}

class _StudentDetailsScreenState extends State<StudentDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(
      fontSize: 18,
      color: const Color.fromARGB(255, 186, 220, 247),
      fontWeight: FontWeight.bold,
    );
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 9, 46, 109),
      appBar: AppBar(
        title: Text('Student Details'),
        backgroundColor: const Color.fromARGB(255, 180, 217, 247),
      ),

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(widget.student.image),
              ),
              SizedBox(height: 20),

              Text("Name: ${widget.student.name ?? "Unknown Student"}",
               style: TextStyle (
                  fontSize: 20,
                  color: const Color.fromARGB(255, 186, 220, 247),
                  fontWeight: FontWeight.w400,
                ),
              ),

              SizedBox(height: 10),

              Text("Student ID: ${widget.student.studentId}",
               style: TextStyle (
                  fontSize: 20,
                  color: const Color.fromARGB(255, 186, 220, 247),
                  fontWeight: FontWeight.w400,
               ),
              ),

              SizedBox(height: 10),

              Text("Course: ${widget.student.course}", 
                style: TextStyle (
                  fontSize: 20,
                  color: const Color.fromARGB(255, 186, 220, 247),
                  fontWeight: FontWeight.w400,
                ),
              ),

              SizedBox(height: 10),

              Text("Year Level: ${widget.student.yearLevel}",
               style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 186, 220, 247),
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 10),

              Text("Age: ${widget.student.age}", 
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 186, 220, 247),
                  fontWeight: FontWeight.w400,
                ),
              ),

              SizedBox(height: 10),

              Text("Hobby: ${widget.student.hobby ?? "No hobby"}", 
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 186, 220, 247),
                  fontWeight: FontWeight.w400,
                ),
              ),

              SizedBox(height: 10),

              Text("Email: ${widget.student.email}", 
                style: TextStyle(
                    fontSize: 20,
                    color: const Color.fromARGB(255, 186, 220, 247),
                    fontWeight: FontWeight.w400,
                  ),
              ),
              SizedBox(height: 10),

              Text("Favorite Subject: ${widget.student.favoritesSubjects}",
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 186, 220, 247),
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 10),

              Text(
                "Status: ${widget.student.isActive ? "Active" : "Inactive"}",
                style: TextStyle(
                  fontSize: 20,
                  color:  const Color.fromARGB(255, 186, 220, 247),
                  fontWeight: FontWeight.w400,
                ),
              ),

               SizedBox(height: 20),
               
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 186, 220, 247),
                ),
                onPressed: () {
                  TextEditingController nameController =
                  TextEditingController(text: widget.student.name ?? "");
                  TextEditingController hobbyController =
                  TextEditingController(text: widget.student.hobby ?? "");
                  TextEditingController emailController =
                  TextEditingController(text: widget.student.email);

                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: const Color.fromARGB(255, 164, 211, 250),
                        title: Text("Edit Student",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 10, 70, 119),
                          ),
                        ),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextField(
                              controller: nameController,
                              style: TextStyle(
                                color: const Color.fromARGB(255, 10, 70, 119),
                              ),
                              decoration: InputDecoration(

                                labelText: "Name",
                                labelStyle: TextStyle(
                                  color: const Color.fromARGB(255, 10, 70, 119),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: const Color.fromARGB(255, 10, 70, 119),
                                  ),
                                ),
                              ),
                            ),

                            TextField(
                              controller: hobbyController,
                              style: TextStyle(
                                color: const Color.fromARGB(255, 10, 70, 119),
                              ),
                              decoration: InputDecoration(
                                labelText: "Hobby",
                                  labelStyle: TextStyle(
                                    color: const Color.fromARGB(255, 10, 70, 119),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: const Color.fromARGB(255, 10, 70, 119),
                                    ),
                                  ),
                                ),
                            ),
                          ],
                        ),
                         actions: [
                          TextButton(
                            
                            onPressed: () {
                              setState(() {
                                if (nameController.text != "") {
                                  widget.student.name = nameController.text;
                                }
                                if (hobbyController.text != "") {
                                  widget.student.hobby = hobbyController.text;
                                }
                              });
                              Navigator.pop(context);
                            },
                            child: Text("Save",
                            style: TextStyle(
                              fontSize: 10,
                              color: const Color.fromARGB(255, 10, 70, 119),
                              fontWeight: FontWeight.w400,
                            ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("Close",
                              style: TextStyle(
                                fontSize: 10,
                                color: const Color.fromARGB(255, 10, 70, 119),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text("Edit",
                  style: TextStyle(
                    fontSize: 10,
                    color: const Color.fromARGB(255, 10, 70, 119),
                    fontWeight: FontWeight.w400,
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