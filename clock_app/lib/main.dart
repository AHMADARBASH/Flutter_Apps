// ignore_for_file: curly_braces_in_flow_control_structures
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

// main colors for whole application
Color firstcolor = Colors.teal[500];
Color secondcolor = Colors.teal[300];
Color thirdcolor = Colors.black;
Color fourthcolor = Colors.white;

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: firstcolor,
      ),
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blueGrey[50],
          appBar: AppBar(
            backgroundColor: firstcolor,
            title: const Text(
              'Flutter Clock',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 300,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 3),
                          color: Colors.white,
                          shape: BoxShape.circle),
                    ),
                    Number(
                      color: firstcolor,
                      size: 35,
                      number: '12',
                      right: 198,
                      bottom: 260,
                    ),
                    Number(
                      number: '1',
                      right: 138,
                      bottom: 257,
                    ),
                    Number(
                      number: '2',
                      right: 90,
                      bottom: 205,
                    ),
                    Number(
                      color: firstcolor,
                      size: 35,
                      number: '3',
                      right: 75,
                      bottom: 130,
                    ),
                    Number(
                      number: '4',
                      right: 94,
                      bottom: 71,
                    ),
                    Number(
                      number: '5',
                      right: 140,
                      bottom: 21,
                    ),
                    Number(
                      color: firstcolor,
                      size: 35,
                      number: '6',
                      right: 204,
                      bottom: -2,
                    ),
                    Number(
                      number: '7',
                      right: 276,
                      bottom: 21,
                    ),
                    Number(
                      number: '8',
                      right: 329,
                      bottom: 75,
                    ),
                    Number(
                      color: firstcolor,
                      size: 35,
                      number: '9',
                      right: 340,
                      bottom: 130,
                    ),
                    Number(
                      number: '10',
                      right: 320,
                      bottom: 206,
                    ),
                    Number(
                      number: '11',
                      right: 267,
                      bottom: 258,
                    ),

                    //minutes
                    StreamBuilder(
                      stream: seqAsyncValues(),
                      builder: (ctx, data) {
                        if (!data.hasData)
                          return const CircularProgressIndicator();
                        else {
                          return Positioned(
                            bottom: 30,
                            right: 210,
                            child: Transform.rotate(
                              angle: data.data['minutes'] * ((pi / 180) * 6),
                              child: Column(
                                children: [
                                  Container(
                                    height: 120,
                                    width: 10,
                                    decoration:
                                        BoxDecoration(color: secondcolor),
                                  ),
                                  Container(
                                    height: 120,
                                    width: 10,
                                    decoration: const BoxDecoration(
                                      color: Color.fromARGB(0, 221, 221, 221),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }
                      },
                    ),
                    //hours
                    StreamBuilder(
                        stream: seqAsyncValues(),
                        builder: (context, data) {
                          if (!data.hasData)
                            return const CircularProgressIndicator();
                          else
                            return Positioned(
                                bottom: 50,
                                right: 208,
                                child: Transform.rotate(
                                  angle: ((data.data['hours'] - 12)) *
                                      ((pi / 180) * 30),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 100,
                                        width: 15,
                                        decoration:
                                            BoxDecoration(color: secondcolor),
                                      ),
                                      Container(
                                        height: 100,
                                        width: 12,
                                      ),
                                    ],
                                  ),
                                ));
                        }),
                    //seconds
                    StreamBuilder(
                      stream: seqAsyncValues(),
                      builder: (ctx, data) {
                        if (!data.hasData)
                          return const CircularProgressIndicator();
                        else {
                          return Positioned(
                              bottom: 30,
                              right: 215,
                              child: Transform.rotate(
                                angle: ((data.data['seconds'] * 1000 +
                                        data.data['mseconds']) *
                                    ((pi / 180) * 0.006)),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 120,
                                      width: 3,
                                      decoration:
                                          BoxDecoration(color: thirdcolor),
                                    ),
                                    Container(
                                      height: 120,
                                      width: 3,
                                    ),
                                  ],
                                ),
                              ));
                        }
                      },
                    ),
                    Positioned(
                      bottom: 135,
                      right: 200,
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: secondcolor),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: StreamBuilder(
                  stream: seqAsyncValues(),
                  builder: (ctx, asyncdata) {
                    if (!asyncdata.hasData)
                      return const Center(child: CircularProgressIndicator());
                    else {
                      return Center(
                        // ignore: avoid_unnecessary_containers
                        child: Container(
                          child: Text(
                              DateFormat('h:mm:ss' '  a')
                                  .format(DateTime.now()),
                              style: TextStyle(
                                fontSize: 40,
                                color: firstcolor,
                              )),
                        ),
                      );
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Stream<Map<String, int>> seqAsyncValues() async* {
  for (var i = 0;; i++) {
    DateTime date = DateTime.now();
    await Future.delayed(const Duration(milliseconds: 10));
    Map<String, int> dateMap = {
      'hours': date.hour,
      'minutes': date.minute,
      'seconds': date.second,
      'mseconds': date.millisecond
    };
    // ignore: unused_local_variable
    String format = '${date.hour} : ${date.minute} : ${date.second}';
    yield dateMap;
  }
}

class Number extends StatelessWidget {
  final double right;
  final double bottom;
  final String number;
  final double size;
  final Color color;
  Number(
      {@required this.right,
      @required this.bottom,
      @required this.number,
      this.size = 20,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: right,
      bottom: bottom,
      child: Text(
        number,
        style: TextStyle(fontSize: size, color: color),
      ),
    );
  }
}
