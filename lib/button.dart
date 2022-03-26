import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  bool isElevated = true;
  String? value;
  Button({Key? key, required this.isElevated, this.value}) : super(key: key);

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              setState(() {
                widget.isElevated = !widget.isElevated;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              width: 125,
              height: 125,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                  color: Colors.grey[300],
                  boxShadow: widget.isElevated
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
              child: Center(
                child: widget.isElevated
                    ? Text(
                        widget.value!,
                        style: const TextStyle(fontSize: 40),
                      )
                    : null,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
