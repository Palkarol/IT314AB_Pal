import 'package:flutter/material.dart';
import '../student.dart';

class AddStudentScreen extends StatefulWidget {
  const AddStudentScreen({super.key});

  @override
  State<AddStudentScreen> createState() => _AddStudentScreenState();
}

class _AddStudentScreenState extends State<AddStudentScreen> {

  TextEditingController studentIdController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController courseController = TextEditingController();
  TextEditingController yearLevelController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  void dispose() {
    studentIdController.dispose();
    fullNameController.dispose();
    courseController.dispose();
    yearLevelController.dispose();
    emailController.dispose();
    super.dispose();
  }

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 9, 46, 109),
      appBar: AppBar(
        title: Text('Add Student'),
        backgroundColor: const Color.fromARGB(255, 180, 217, 247),
      ),
      
      body: Padding(
        padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                'New Student',
                  style: TextStyle(
                    fontSize: 24,
                    color: const Color.fromARGB(255, 186, 220, 247),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Student information will be added here later.',
                  style: TextStyle(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 186, 220, 247),
                  ),
                ),

                SizedBox(height: 20),

                TextFormField(
                  controller: studentIdController,
                  style: TextStyle(color: const Color.fromARGB(255, 186, 220, 247),),
                  validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Student ID is required';
                  }
                  for (Student s in students) {
                    if (s.studentId == value.trim()) {
                      return 'Student ID already exists';
                    }
                  }
                  return null;
                },
                  decoration: InputDecoration(
                    labelText: "Student ID",
                    labelStyle: TextStyle(color: const Color.fromARGB(255, 186, 220, 247),),
                    errorStyle: TextStyle(color: Colors.yellowAccent),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: const Color.fromARGB(255, 186, 220, 247),),
                    ),
                    errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellowAccent),
                  ),
                  focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellowAccent, width: 2),
                  ),
                  ),
                ),

                SizedBox(height: 15),

                TextFormField(
                  controller: fullNameController,
                  style: TextStyle(color: const Color.fromARGB(255, 186, 220, 247),),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Full Name is required';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: "Full Name",
                    labelStyle: TextStyle (color: const Color.fromARGB(255, 186, 220, 247),),
                    errorStyle: TextStyle(color: Colors.yellowAccent),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: const Color.fromARGB(255, 186, 220, 247),),
                    ),
                    errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellowAccent),
                  ),
                  focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellowAccent, width: 2),
                  ),
                  ),
                ),

                SizedBox(height: 15),

                TextFormField(
                  controller: courseController,
                  style: TextStyle(color: const Color.fromARGB(255, 186, 220, 247),),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Course is required';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: "Course",
                    labelStyle: TextStyle(color: const Color.fromARGB(255, 186, 220, 247),),
                    errorStyle: TextStyle(color: Colors.yellowAccent),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: const Color.fromARGB(255, 186, 220, 247),),
                    ),
                    errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellowAccent),
                  ),
                  focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellowAccent, width: 2),
                  ),
                  ),
                ),

                SizedBox(height: 15),

                TextFormField(
                  controller: yearLevelController,
                  keyboardType: TextInputType.number,
                  style: TextStyle(color: const Color.fromARGB(255, 186, 220, 247),),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Year Level is required';
                    }
                    int? year = int.tryParse(value);
                    if (year == null) {
                      return 'Year Level must be a number';
                    }
                    if (year < 1 || year > 4) {
                      return 'Year Level must be from 1 to 4';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: "Year Level",
                    labelStyle: TextStyle(color: const Color.fromARGB(255, 186, 220, 247),),
                    errorStyle: TextStyle(color: Colors.yellowAccent),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: const Color.fromARGB(255, 186, 220, 247),),
                    ),
                    errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellowAccent),
                  ),
                    focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellowAccent, width: 2),
                  ),
                  ),
                ),

                SizedBox(height: 15),

                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: const Color.fromARGB(255, 186, 220, 247),),
                  validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email Address is required';
                      }
                      if (!value.contains('@') ||
                          !value.contains('.') ||
                          value.contains(' ')) {
                        return 'Enter a valid email address';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                    labelText: "Email Address",
                    labelStyle: TextStyle(color: const Color.fromARGB(255, 186, 220, 247),),
                    errorStyle: TextStyle(color: Colors.yellowAccent),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: const Color.fromARGB(255, 186, 220, 247),),
                    ),
                    errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellowAccent),
                  ),
                   focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellowAccent, width: 2),
                  ),
                
                  ),
                ),

                SizedBox(height: 25),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 129, 190, 240),
                  ),
                  onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Student newStudent = Student(
                      image: "assets/images/image.png",
                      name: fullNameController.text.trim(),
                      course: courseController.text.trim(),
                      yearLevel: int.parse(yearLevelController.text.trim()),
                      age: 0,
                      studentId: studentIdController.text.trim(),
                      email: emailController.text.trim(),
                      favoritesSubjects: "Not set",
                    );

                    students.add(newStudent);
                    saveStudents();
                    
                    studentIdController.clear();
                    fullNameController.clear();
                    courseController.clear();
                    yearLevelController.clear();
                    emailController.clear();

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Student added')),
                    );
                    Navigator.pop(context);
                  }
                },
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 10, 70, 119),
                      fontWeight: FontWeight.bold,
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