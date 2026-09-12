import 'package:flutter/material.dart';
import 'product_card_screen.dart';
import 'snackbar_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'النموذج الرابع',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: 'Arial',
        scaffoldBackgroundColor: const Color(0xFFF3E9F3),
      ),
      // دعم اللغة العربية واتجاه الكتابة من اليمين لليسار
      locale: const Locale('ar'),
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: child!,
        );
      },
      home: const HomeSelector(),
    );
  }
}

/// شاشة بسيطة للتنقل بين الواجهتين المطلوبتين في النموذج
class HomeSelector extends StatelessWidget {
  const HomeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('النموذج الرابع'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(240, 50),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProductCardScreen(),
                  ),
                );
              },
              child: const Text('الواجهة الأولى: بطاقة المنتج'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(240, 50),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SnackBarScreen(),
                  ),
                );
              },
              child: const Text('الواجهة الثانية: SnackBar'),
            ),
          ],
        ),
      ),
    );
  }
}
