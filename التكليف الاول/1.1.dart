void main() {
  String studentName = "عبدالجبار رمزي سالم";
  double examScore = 46.0; 
  examScore = examScore + 5; 

  print("اسم الطالب: $studentName");
  print("الدرجة النهائية: $examScore");

  if (examScore >= 50) {
    print("النتيجة: ناجح");
  } else {
    print("النتيجة: راسب");
  }
}