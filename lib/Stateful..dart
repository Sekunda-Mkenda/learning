// ignore: file_names
import 'package:flutter/material.dart';
import 'screens/stateless.dart';

class Sekunda extends StatefulWidget {
  const Sekunda({super.key});

  @override
  State<Sekunda> createState() => _sekundaState();
}

// ignore: camel_case_types
class _sekundaState extends State<Sekunda> {
  String buttonName = "please click me";
  int currentIndex = 0;
  bool _isClicked = false;

  // ignore: non_constant_identifier_names
  // List<Widget> //eka list yako ya index

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "FOOTBALL SCORE PREDICTOR",
            style: TextStyle(color: Color.fromARGB(255, 15, 15, 15)),
          ),
          //backgroundColor: Color.fromARGB(2, 0, 0, 1),
        ),
        body: Center(
          child: currentIndex == 0
              ? Container(
                  // margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 0.0, vertical: 0.0),
                  color: const Color.fromARGB(255, 224, 166, 230),
                  width: double.infinity,
                  height: double.infinity,

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      OutlinedButton(
                        //style: ButtonStyle(
                        //backgroundColor: color.black,
                        onPressed: () {
                          setState(() {
                            buttonName = "you clicked me";
                          });
                        },
                        child: Text(buttonName),
                      ),
                      OutlinedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const Meilee()));
                        },
                        child: const Text("navigation button"),
                      ),
                    ],
                  ),
                )
              : GestureDetector(
                  onTap: () {
                    setState(() {
                      _isClicked = !_isClicked;
                    });
                  },
                  child: _isClicked
                      ? SizedBox(
                          width: double.infinity, // To make it full width
                          height: double.infinity, // To make it full height
                          child: Image.network(
                            'https://images.unsplash.com/photo-1602472097151-72eeec7a3185?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D.jpg',
                            fit: BoxFit
                                .cover, // This will make the image cover the entire box
                          ),
                        )
                      : SizedBox(
                          width: double.infinity, // To make it full width
                          height: double.infinity,
                          child: Image.network(
                            "https://img.freepik.com/free-vector/football-graffiti-background_1176-345.jpg?w=1380&t=st=1709111922~exp=1709112522~hmac=1eb1b7db4910d744c41118060cc55c0ba4bf64539f294036095cbe72ef1b26b7",
                            fit: BoxFit.cover,
                          ),
                        ),
                ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(label: "home", icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: "settings", icon: Icon(Icons.settings))
          ],
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ));
  }
}

// ignore: camel_case_types

