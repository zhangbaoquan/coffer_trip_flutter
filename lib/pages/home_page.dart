import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

/// author       : coffer
/// date         : 2022/10/22
/// description  :

/// 当List 滚动超过100时，将AppBar 完全设置成白色
const APPBAR_SCROLL_OFFSET = 100;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _imageUrls = [
    'https://dimg04.c-ctrip.com/images/700c10000000pdili7D8B_780_235_57.jpg',
    'https://dimg04.c-ctrip.com/images/700c10000000pdili7D8B_780_235_57.jpg',
    'https://dimg04.c-ctrip.com/images/700c10000000pdili7D8B_780_235_57.jpg'
  ];

  // appBar的透明度
  double appBarAlpha = 0;

  /// @param offset 是滚动的距离
  _onScroll(offset) {
    print('当前滚动的距离 ： $offset');
    // 滚动超过100时，将AppBar 完全设置成白色
    double alpha = offset / APPBAR_SCROLL_OFFSET;
    if (alpha < 0) {
      alpha = 0;
    } else if (alpha > 1) {
      alpha = 1;
    }
    setState(() {
      appBarAlpha = alpha;
    });
    print('appBarAlpha : $appBarAlpha');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        MediaQuery.removePadding(
          removeTop: true,
          context: context,
          child: NotificationListener(
            onNotification: (scrollNotification) {
              if (scrollNotification is ScrollUpdateNotification &&
                  scrollNotification.depth == 0) {
                // 当前仅是列表滚动的是否触发（使用ScrollUpdateNotification 判断）
                // 由于会检测列表中所有元素的滚动状态（遍历所有层级），这里的scrollNotification.depth == 0
                // 当前列表第0个元素滚动时，才让其触发监听，避免监听到ListView里面的Swiper的滚动
                _onScroll(scrollNotification.metrics.pixels);
              }
              return false;
            },
            child: ListView(
              children: <Widget>[
                Container(
                  height: 160,
                  child: Swiper(
                    itemCount: _imageUrls.length,
                    autoplay: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Image.network(
                        _imageUrls[index],
                        fit: BoxFit.fill,
                      );
                    },
                    pagination: SwiperPagination(),
                  ),
                ),
                Container(
                  height: 800,
                  child: const ListTile(
                    title: Text("哈哈"),
                  ),
                )
              ],
            ),
          ),
        ),
        Opacity(
          // 该组件支持修改元素透明度
          opacity: appBarAlpha,
          child: Container(
            height: 80,
            decoration: BoxDecoration(color: Colors.white),
            child: const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 50),
                child: Text('首页'),
              ),
            ),
          ),
        )
      ],
    ));
  }

  @override
  void dispose() {
    super.dispose();
  }
}
