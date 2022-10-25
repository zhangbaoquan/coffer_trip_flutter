import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// author       : coffer
/// date         : 2022/10/22
/// description  :

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('首页'),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
