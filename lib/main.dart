import 'package:flutter/material.dart';
import './button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isElevated = true;

  @override
  build(context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
              backgroundColor: Colors.grey[300],
              body: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isElevated = !isElevated;
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      width: 250,
                      height: 250,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30)),
                          color: Colors.grey[300],
                          boxShadow: isElevated
                              ? [
                                  BoxShadow(
                                      color: Colors.grey[100]!,
                                      spreadRadius: 1.5,
                                      blurRadius: 10,
                                      offset: const Offset(7, 4)),
                                  BoxShadow(
                                      color: Colors.grey[500]!,
                                      spreadRadius: 1.5,
                                      blurRadius: 10,
                                      offset: const Offset(-7, -7)),
                                ]
                              : null),
                      child: isElevated
                          ? const Icon(
                              Icons.arrow_downward,
                              color: Colors.blue,
                              size: 100,
                            )
                          : null,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isElevated = !isElevated;
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 100),
                      width: 250,
                      height: 250,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30)),
                          color: Colors.grey[300],
                          boxShadow: !isElevated
                              ? [
                                  BoxShadow(
                                      color: Colors.grey[100]!,
                                      spreadRadius: 1.5,
                                      blurRadius: 10,
                                      offset: const Offset(7, 4)),
                                  BoxShadow(
                                      color: Colors.grey[500]!,
                                      spreadRadius: 1.5,
                                      blurRadius: 10,
                                      offset: const Offset(-7, -7)),
                                ]
                              : null),
                      child: !isElevated
                          ? const Icon(
                              Icons.arrow_upward,
                              color: Colors.blue,
                              size: 100,
                            )
                          : null,
                    ),
                  ),
                ],
              ))),
        ));
  }
}
