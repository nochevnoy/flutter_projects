import 'package:flutter/material.dart';

class PhoneHomePage extends StatelessWidget {
  const PhoneHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(height: 75),
        NavLabel(),
        Expanded(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              PhoneCard(label: 'Медицина'),
              SizedBox(height: 35),
              PhoneCard(label: 'Полиция'),
              SizedBox(height: 35),
              PhoneCard(label: 'Посольство'),
              SizedBox(height: 35),
              PhoneCard(label: 'Транспорт'),
              SizedBox(height: 35),
              PhoneCard(label: 'Свои номера '),
              SizedBox(height: 35),
            ],
          ),
        )
      ],
    ));
  }
}

class PhoneCard extends StatelessWidget {
  final String label;

  const PhoneCard({
    Key? key, required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
       height: 125,
      //height: MediaQuery.of(context).size.height,
      // color: Colors.grey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
              //Для отступа слева
              padding: EdgeInsets.only(left: 15),
              child: Align(
                  // Для выравнивания по левому краю
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    label, style: TextStyle(
                      color: Colors.black,
                      fontSize: 26,
                      fontWeight: FontWeight.w500
                    ),
                  ))),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                PhoneCardChild(label: 'Единый телефон \nслужб'),
                SizedBox(width: 25),
                PhoneCardChild(label: 'Единый телефон \nслужб'),
                SizedBox(width: 25),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PhoneCardChild extends StatelessWidget {
  final String label;

  const PhoneCardChild({
    Key? key, required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff59A4F2),
        borderRadius: BorderRadius.circular(15),
      ),
      width: 250,
      height: 100,
      // height: MediaQuery.of(context).size.height,
      child: Expanded(
          child: Row(
        children: [
          Container(
            //Плейсхолдер
            // height: 75,
            height: MediaQuery.of(context).size.height,
            width: 75,
            child: Placeholder(color: Colors.white,),
            padding: EdgeInsets.only(left: 15, top: 10, bottom: 10),
          ),
           Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                label,  //'Единый телефон \nслужб'
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
                ),
              ))
        ],
      )),
    );
  }
}

// Навигация
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
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10),
              child: Icon(
                Icons.chevron_left,
                color: Color(0xff59A4F2),
                size: 35,
              ),
            ),
          ),
          Expanded(child: Container(child: Text('ТЕЛЕФОНЫ СЛУЖБ'))),
          Expanded(child: Container())
        ],
      ),
    );
  }
}
