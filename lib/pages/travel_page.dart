import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// author       : coffer
/// date         : 2022/10/22
/// description  :

class TravelPage extends StatefulWidget {
  const TravelPage({Key? key}) : super(key: key);

  @override
  _TravelPageState createState() => _TravelPageState();
}

class _TravelPageState extends State<TravelPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('旅拍'),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
