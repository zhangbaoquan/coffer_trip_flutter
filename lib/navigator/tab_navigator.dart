import 'package:coffer_flutter_trip/pages/home_page.dart';
import 'package:coffer_flutter_trip/pages/my_page.dart';
import 'package:coffer_flutter_trip/pages/search_page.dart';
import 'package:coffer_flutter_trip/pages/travel_page.dart';
import 'package:flutter/material.dart';

/// author       : coffer
/// date         : 2022/10/22
/// description  :

class TabNavigator extends StatefulWidget {
  const TabNavigator({Key? key}) : super(key: key);

  @override
  _TabNavigatorState createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  /// 默认未选择状态下的颜色
  final _defaultColor = Colors.grey;

  /// 选中状态下的颜色
  final _activeColor = Colors.blue;

  /// 当前选中的位置
  int _currentIndex = 0;

  final _controller = PageController(
    // 初始状态下显示第0个tab
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: const [
          // 声明要显示的页面
          HomePage(),
          SearchPage(),
          TravelPage(),
          MyPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          // 点击按钮的时候进行跳转到对应的页面，同时更新index
          _controller.jumpToPage(index);
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          // 为底部导航添加4个Item View，每一个Item View分别拥有选中和未选中状态
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _defaultColor,
              ),
              activeIcon: Icon(
                Icons.home,
                color: _activeColor,
              ),
              label: '首页'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: _defaultColor,
              ),
              activeIcon: Icon(
                Icons.search,
                color: _activeColor,
              ),
              label: '搜索'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.camera_alt,
                color: _defaultColor,
              ),
              activeIcon: Icon(
                Icons.camera_alt,
                color: _activeColor,
              ),
              label: '旅拍'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
                color: _defaultColor,
              ),
              activeIcon: Icon(
                Icons.account_circle,
                color: _activeColor,
              ),
              label: '我的'),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
