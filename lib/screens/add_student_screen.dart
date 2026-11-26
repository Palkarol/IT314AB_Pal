import 'package:flutter/material.dart';

class AddStudentScreen extends StatelessWidget {
  const AddStudentScreen({super.key});

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

              // Student input fields will go here.
            ],
          ),
        ),
      ),
    );
  }
}