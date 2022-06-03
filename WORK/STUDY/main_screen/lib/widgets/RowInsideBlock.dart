import 'dart:developer';

import 'package:flutter/material.dart';

class RowInsideBlock extends StatelessWidget {
  final int counter;
  const RowInsideBlock({
    Key? key,
    required this.counter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          FlexIcon(),
          // const SizedBox(width: 5,),
          FlexTextInside(
            counter: counter,
          ),
          FlexThreeDots(),
        ],
      ),
    );
  }
}

class FlexThreeDots extends StatelessWidget {
  const FlexThreeDots({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      margin: const EdgeInsets.only(right: 30),
      child: const Icon(
        Icons.more_vert,
        color: Colors.white,
        size: 30,
      ),
    );
  }
}

class FlexTextInside extends StatelessWidget {
  final int counter;
  FlexTextInside({
    Key? key,
    required this.counter,
  }) : super(key: key);

  final labelArray = [
    {
      'up': 'Попали в трудную ситуацию?',
      'down': 'Телефоны служб',
    },
    {
      'up': 'Тематически провести день?',
      'down': 'Маршруты прогулок',
    },
    {
      'up': 'Легко общаться с жителями?',
      'down': 'Выучите язык',
    },
    {
      'up': 'Хотите больше увидеть в России?',
      'down': 'Поездка по городам',
    },
    {
      'up': 'Нравится духовно развиваться?',
      'down': 'Музеи города',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextInside(
          size: 12,
          label: labelArray[counter]['up'].toString(),
          fontWeight: FontWeight.w400,
        ),
        SizedBox(
          height: 5,
        ),
        TextInside(
          size: 18,
          label: labelArray[counter]['down'].toString(),
          fontWeight: FontWeight.w700,
        ),
      ],
    ));
  }
}

class TextInside extends StatelessWidget {
  static const color = Colors.white;
  final double size;
  final String label;
  final FontWeight fontWeight;

  const TextInside({
    Key? key,
    required this.size,
    required this.label,
    required this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
          color: TextInside.color,
          fontSize: size,
          fontWeight: fontWeight),
    );
  }
}

class FlexIcon extends StatelessWidget {
  const FlexIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      margin: const EdgeInsets.all(15),
      child: const Placeholder(),
    );
  }
}
