import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
//Where you going to define your variables

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
        centerTitle: true,
      ),
      body: Row(children: [
        Container(height: 200.0, width: 100.0, color: Colors.yellow),
        Container(height: 200.0, width: 100.0, color: Colors.blue),
      ]),
    );
  }
}
