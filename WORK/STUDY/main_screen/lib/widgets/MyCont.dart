import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:main_screen/widgets/RowInsideBlock.dart';
//
class MyCont extends StatelessWidget {
  final int counter;
  const MyCont({
    Key? key, required this.counter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width,
      width: double.infinity,
      height: 100,
      //color: Colors.blue,
      margin: const EdgeInsets.only(left: 20.0 ,right: 20.0, top: 45),
      decoration: BoxDecoration(
        color: const Color(0xff59A4F2),
        borderRadius: BorderRadius.circular(15),
      ),child:  RowInsideBlock(counter: counter,),
    );
  }
}