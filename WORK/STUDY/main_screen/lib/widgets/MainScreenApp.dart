
import 'package:flutter/material.dart';
import 'package:main_screen/widgets/MyCont.dart';

class MainScreenApp extends StatelessWidget {

  const MainScreenApp({Key? key,  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children:  <Widget>[
            for (int i = 0; i < 5; i++) 
              MyCont(counter: i,)
          ],
        ),
      ),
    );
  }
}


