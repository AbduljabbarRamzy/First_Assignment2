// تعريف قائمة الطلاب خارج دالة main ليسهل الوصول إليها
List<Map<String, dynamic>> studentsList = [
  {"name": "Ahmed", "age": 20, "score": 55.0},
  {"name": "Khalid", "age": 22, "score": 65.0},
];

// دالة لإضافة طالب جديد (باستخدام معاملات مسماة اختيارية)
void addStudent({String? name, int? age, double? score}) {
  studentsList.add({
   
    "name": name ?? "غير معروف",
    "age": age ?? 18,
    "score": score ?? 0.0
  });
}

void main() {
  
  addStudent(name: "عبدالجبار رمزي سالم", age: 21, score: 85.0);
  addStudent(name: "Omar", score: 45.0); 
  print("--- الطلاب الحاصلون على درجة أكبر من 60 ---"); 
 
  for (var student in studentsList) {
    if (student["score"] > 60) {
      print("الاسم: ${student['name']} | الدرجة: ${student['score']}");
    }
  }
}