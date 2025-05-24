class Student {
  String name, degree, reg, city;
  int age;
  int? semester;
  double cgpa;

  Student({
    required this.reg,
    required this.name,
    required this.age,
    required this.cgpa,
    required this.degree,
    required this.city,
  });

  Student.myConstructor({
    required this.reg,
    required this.name,
    required this.age,
    required this.semester,
    required this.cgpa,
    required this.degree,
    required this.city,
  });
}

void main() {
  List<Map<String, dynamic>> studentData = [
    {
      "reg": "2022-Arid-0085",
      "name": "Hammad Hassan",
      "age": 23,
      "cgpa": 3.13,
      "semester": 7,
      "degree": "BSCS",
      "city": "RWP",
    },
    {
      "reg": "2022-Arid-0084",
      "name": "Ali",
      "age": 23,
      "cgpa": 3.33,
      "semester": 7,
      "degree": "BSAI",
      "city": "RWP",
    },
    {
      "reg": "2022-Arid-0112",
      "name": "Hassan",
      "age": 23,
      "cgpa": 3.30,
      "semester": 7,
      "degree": "BSAI",
      "city": "RWP",
    },
  ];

  double lowestCGPA = double.infinity;
  Map<String, dynamic>? studentWithLowestCGPA;
  Map<String, dynamic>? youngestStudent;

  for (var s in studentData) {
    if (s["cgpa"] < lowestCGPA) {
      lowestCGPA = s["cgpa"];
      studentWithLowestCGPA = s;
    }
    print("Data of student from BSAI: ");
    if (s["degree"] == "BSAI") {
      printStudentData(s);
    }

    if (s["age"] <
        (youngestStudent != null ? youngestStudent["age"] : double.infinity)) {
      youngestStudent = s;
    }
  }

  if (studentWithLowestCGPA != null) {
    print("\nStudent with the lowest CGPA:");
    printStudentData(studentWithLowestCGPA);
  }

  if (youngestStudent != null) {
    print("\nYoungest student:");
    printStudentData(youngestStudent);
  }
}

void printStudentData(Map<String, dynamic> student) {
  print(
    "Reg: ${student["reg"]}\n"
    "Name: ${student["name"]}\n"
    "Age: ${student["age"]}\n"
    "CGPA: ${student["cgpa"]}\n"
    "Semester: ${student["semester"]}\n"
    "Degree: ${student["degree"]}\n"
    "City: ${student["city"]}\n",
  );
}
