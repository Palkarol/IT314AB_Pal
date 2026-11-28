import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class Student {
  final String image;
  String? name;
  final String course;
  final int yearLevel;
  final int age;
  String? hobby;
  final String studentId;
  final String email;
  final String favoritesSubjects;
  bool isFavorite;
  bool isActive;
  bool showDetails;

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
    this.isFavorite = false,
    this.isActive = true,
    this.showDetails = true,
    
    
  });
}

List<Student> buildStudents() {
  return [
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
      isActive: true,
      
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
      isActive: true,
      
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
      isActive: true,
      
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
      isActive: true,
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
      isActive: true,
      
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
      isActive: true,
     
    ),
  ];
}

Map<String, dynamic> studentToMap(Student student) {
  return {
    'image': student.image,
    'name': student.name,
    'course': student.course,
    'yearLevel': student.yearLevel,
    'age': student.age,
    'hobby': student.hobby,
    'studentId': student.studentId,
    'email': student.email,
    'favoritesSubjects': student.favoritesSubjects,
    'isFavorite': student.isFavorite,
    'isActive': student.isActive,
  };
}

Student studentFromMap(Map<String, dynamic> map) {
  return Student(
    image: map['image'],
    name: map['name'],
    course: map['course'],
    yearLevel: map['yearLevel'],
    age: map['age'],
    hobby: map['hobby'],
    studentId: map['studentId'],
    email: map['email'],
    favoritesSubjects: map['favoritesSubjects'],
    isFavorite: map['isFavorite'],
    isActive: map['isActive'],
  );
}

List<Student> students = buildStudents();

Future<void> saveStudents() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();

  List<Map<String, dynamic>> list = [];
  for (Student s in students) {
    list.add(studentToMap(s));
  }

  String text = jsonEncode(list);
  await prefs.setString('students', text);
}

Future<void> loadStudents() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();

  String? text = prefs.getString('students');
  if (text == null) {
    return;
  }

  List<dynamic> list = jsonDecode(text);
  List<Student> loaded = [];
  for (var item in list) {
    loaded.add(studentFromMap(item));
  }
  students = loaded;
}


