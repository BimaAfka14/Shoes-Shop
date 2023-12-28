import 'package:flutter/material.dart';
import 'package:tugas_akhir_mobile_2023/pages/Home.dart';
import 'package:tugas_akhir_mobile_2023/pages/login.dart';
import 'package:tugas_akhir_mobile_2023/pages/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}
