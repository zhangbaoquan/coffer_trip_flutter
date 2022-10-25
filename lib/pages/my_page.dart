import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// author       : coffer
/// date         : 2022/10/22
/// description  :

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('我的'),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
