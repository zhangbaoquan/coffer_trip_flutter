import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// author       : coffer
/// date         : 2022/10/22
/// description  :

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('搜索'),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
