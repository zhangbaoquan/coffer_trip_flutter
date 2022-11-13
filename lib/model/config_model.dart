/// author       : coffer
/// date         : 2022/11/13
/// description  :
class ConfigModel {
  final String searchUrl;

  ConfigModel({required this.searchUrl});

  /// 通过调用ConfigModel.fromJson 来实例化ConfigModel
  factory ConfigModel.fromJson(Map<String, dynamic> json) {
    return ConfigModel(searchUrl: json['searchUrl']);
  }

  Map<String, dynamic> toJson() {
    return {searchUrl: searchUrl};
  }
}
