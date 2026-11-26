import 'package:flutter/material.dart';
import 'student.dart';
import 'student_details_screen.dart';
import 'screens/student_list_screen.dart';
import 'screens/add_student_screen.dart';

void main() {
  students.sort((a, b) => (a.name ?? "Unknown Student")
    .toLowerCase()
    .compareTo((b.name ?? "Unknown Student").toLowerCase()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First Flutter Application',
      initialRoute: '/student-list',
      routes: {
        '/student-list': (context) {
          return StudentListScreen();
        },
        '/student-details': (context) {
          Student student =
              ModalRoute.of(context)!.settings.arguments as Student;
          return StudentDetailsScreen(student: student);
        },
        '/add-student': (context) {
          return AddStudentScreen();
        },
      },
    );
  }
}