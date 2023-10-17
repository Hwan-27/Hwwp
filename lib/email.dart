import 'package:flutter/material.dart';
import 'package:get/get.dart'; // GetX 패키지 가져오기

class emailsend extends StatelessWidget {
  const emailsend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Email App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Email App'),
        ),
        body: const Center(
          child: Text('Hello, Flutter!'),
        ),
      ),
    );
  }
}
