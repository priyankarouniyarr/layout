import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  // List elements = [
  //   MyHomePage(key: UniqueKey(),),
  //   MyHomePage(key: UniqueKey(),),
  // ];
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      //  home: MyHomePage(key: UniqueKey()),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white54,
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Skip',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                const Image(
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSk43k_T6Qt8AQMe9aXqki3achkO6a_eOyMCueSEPHzLEsaYhbjSGpnVu8I7g&s')),
                const Text(
                  'Fast Delivery',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Quiz excepteur officia lpsum in oroident allquip and non dolore quis ipsm prodient elit. Sint ex eu enim nulla veniam dolore non dolore sint pariatur',
                  style: TextStyle(
                    color: Colors.teal,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.circle,
                        size: 10, color: Colors.orangeAccent),
                    // Icon(Icons.rectangle, size: 15 color: Colors.orange),
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        width: 50,
                        height: 5,
                        color: Colors.orangeAccent,
                        child: const Text('   ')),
                    const Icon(Icons.circle,
                        size: 10, color: Colors.orangeAccent),
                  ],
                ),
                const SizedBox(height: 50), 
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsetsDirectional.all(20),
                    child: const Expanded(
                      child: Text('Next',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
              ]),
        ));
  }
}
