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

List<Student> students = buildStudents();


