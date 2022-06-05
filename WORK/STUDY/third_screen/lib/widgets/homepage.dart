import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(height: 75),
        NavLabel(),
        SizedBox(height: 45),
        Label(),
        SizedBox(height: 35),
        RowWithButton(),
        SizedBox(height: 25),
        Lorem(),
        SizedBox(height: 35),
        Container(
            padding: EdgeInsets.only(left: 10),
            width: double.infinity,
            child: Text('Причины вызова', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
        SizedBox(height: 25),
        Container(
            padding: EdgeInsets.only(left: 10),
            width: double.infinity,
            child: Text('•  Причина 1')),
        SizedBox(height: 25),
        Container(
            padding: EdgeInsets.only(left: 10),
            width: double.infinity,
            child: Text('•  Причина 1')),
        SizedBox(height: 25),
        Container(
            padding: EdgeInsets.only(left: 10),
            width: double.infinity,
            child: Text('•  Причина 1')),
      ],
    ));
  }
}

class Lorem extends StatelessWidget {
  const Lorem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'));
  }
}

class RowWithButton extends StatelessWidget {
  const RowWithButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  '112',
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ))),
        Expanded(
            child: Container(
                padding: EdgeInsets.only(right: 10),
                child: FloatingActionButton(
                  onPressed: null,
                  backgroundColor: Color(0xffF1564A),
                  child: Text('ПОЗВОНИТЬ', style: TextStyle(fontSize: 20),),
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  ),
                ))),
      ],
    );
  }
}

class Label extends StatelessWidget {
  const Label({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.only(left: 10),
        child: Text(
          'Скорая помощь',
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 40),
        ));
  }
}

class NavLabel extends StatelessWidget {
  const NavLabel({
    Key? key,
  }) : super(key: key);
//Три Expanded Container позволят поделить строку на 3 ровных части и разместить текст точно по центру
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          Container(
            width: 50,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 10),
            child: Icon(
              Icons.chevron_left,
              color: Color(0xff59A4F2),
              size: 35,
            ),
          ),
          Expanded(
              child: Container(
                  child: Text(
            'КАРТОЧКА ТЕЛЕФОНА',
            textAlign: TextAlign.center,
          ))),
          Container(
            width: 50,
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.favorite_border,
              color: Colors.red,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}
