import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jkb_mobile/intro_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff253b80)),
        fontFamily: 'Poppins',
        useMaterial3: true,
      ),
      home: const IntroPage(),
    );
  }
}
