import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //return const Text('data');
    return Scaffold(
      appBar: AppBar(title: Text('Это AppBar, дружище')),
      body: Center(
        child: Column(children: const [
          _ContWidget(),
          SizedBox(
            height: 30,
          ),
          Text(
            'data',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 25,
              fontWeight: FontWeight.w700
            ),
          ),
        ]),
      ),
    );
  }
}

class _ContWidget extends StatelessWidget {
  const _ContWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      child: Placeholder(),
    );
  }
}
