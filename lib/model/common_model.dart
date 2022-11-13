/// author       : coffer
/// date         : 2022/11/13
/// description  :
class CommonModel {
  final String? icon;
  final String? title;
  final String url;
  final String? statusBarColor;
  final bool? hideAppBar;

  CommonModel(
      {this.icon,
      this.title,
      required this.url,
      this.statusBarColor,
      this.hideAppBar});

  //命名工厂构造函数必须要有返回值，类似static 函数无法访问成员变量和方法
  factory CommonModel.fromJson(Map<String, dynamic> json) {
    return CommonModel(
        icon: json['icon'],
        title: json['title'],
        url: json['url'],
        statusBarColor: json['statusBarColor'],
        hideAppBar: json['hideAppBar']);
  }
}
