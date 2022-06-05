import 'package:flutter/material.dart';


class NumPad extends StatelessWidget {
  final double buttonSize;
  final Color buttonColor;
  final Color iconColor;

  NumPad({
    Key? key,
    this.buttonSize = 70,
    this.buttonColor = Colors.green,
    this.iconColor = Colors.blue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.only(left: 30, right: 30),
      child: Column(
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NumberButton(
                number: 1,
                size: buttonSize,
                color: buttonColor,
              ),
              NumberButton(
                number: 2,
                size: buttonSize,
                color: buttonColor,
              ),
              NumberButton(
                number: 3,
                size: buttonSize,
                color: buttonColor,
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NumberButton(
                number: 4,
                size: buttonSize,
                color: buttonColor,
              ),
              NumberButton(
                number: 5,
                size: buttonSize,
                color: buttonColor,
              ),
              NumberButton(
                number: 6,
                size: buttonSize,
                color: buttonColor,
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NumberButton(
                number: 7,
                size: buttonSize,
                color: buttonColor,
              ),
              NumberButton(
                number: 8,
                size: buttonSize,
                color: buttonColor,
              ),
              NumberButton(
                number: 9,
                size: buttonSize,
                color: buttonColor,
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () => null,
                icon: Icon(
                  Icons.backspace,
                  color: iconColor,
                ),
                iconSize: buttonSize,
              ),
              NumberButton(
                number: 0,
                size: buttonSize,
                color: buttonColor,
              ),
              IconButton(
                onPressed: () => null,
                icon: Icon(
                  Icons.done_rounded,
                  color: iconColor,
                ),
                iconSize: buttonSize,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class NumberButton extends StatelessWidget {
  final int number;
  final double size;
  final Color color;

  const NumberButton({
    Key? key,
    required this.number,
    required this.size,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(size / 2),
          ),
        ),
        onPressed: null,
        child: Center(
          child: Text(
            number.toString(),
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 40),
          ),
        ),
      ),
    );
  }
}