void divideNumbers({required double num1, double? num2}) {
  
  double safeNum2 = num2 ?? 1.0; 

  try {
    if (safeNum2 == 0) {
      throw Exception("عذراً، لا يمكن القسمة على صفر!");
    }
    
    double result = num1 / safeNum2;
    print("نتيجة القسمة: $result");
    
  } catch (error) {
    
    print("حدث خطأ: $error");
  }
}

void main() {
  
  divideNumbers(num1: 10, num2: 2); 
  
  divideNumbers(num1: 15); 
  
  divideNumbers(num1: 20, num2: 0); 
}