void main() {
  String? name; // المتغير الآن قيمته null
  
  // نستخدم المعامل (??) للتحقق: إذا كان name فارغاً، استخدم القيمة التي على اليمين
  String displayName = name ?? "ضيف غير معروف"; 
  
  print(displayName); // النتيجة ستكون: ضيف غير معروف
}