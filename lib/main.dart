// ignore: unused_import
import "package:flutter/material.dart";
import 'Stateful..dart';
// ignore: unused_import
import 'screens/stateless.dart';
void main() {
  runApp(const myApp());
}

// ignore: camel_case_types, must_be_immutable
class myApp extends StatefulWidget {
  const myApp({super.key});

  @override
  State<myApp> createState() => _myAppState();
}

// ignore: camel_case_types
class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Sekunda(),
    );
  }
}

// ignore: camel_case_types
