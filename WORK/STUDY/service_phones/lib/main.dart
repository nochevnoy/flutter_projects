import 'package:flutter/material.dart';

import 'widgets/homepage.dart';

void main() => runApp(const PhonesApp());

class PhonesApp extends StatelessWidget {
  const PhonesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PhoneHomePage(),
    );
  }
}
