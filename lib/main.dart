import 'package:flutter/material.dart';
import 'package:proje/screens/first_screen.dart';

void main() {
  runApp(const MyApp());
}
Color mainColor = const Color.fromARGB(255, 254, 241, 229);
Color secondaryColor = const Color.fromARGB(255, 153, 88, 45);
Color thirthColor = const Color.fromARGB(255, 246, 210, 170);
Color fourthColor = const Color.fromARGB(255, 246, 206, 176); // bak
Color fifthColor = const Color.fromARGB(255, 250, 227, 185);
Color sixthColor = const Color.fromARGB(255, 252, 227, 185);

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      title: 'Meditation Application',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        scaffoldBackgroundColor: mainColor
      ),
      home: const karsilama()
    );
  }
}

