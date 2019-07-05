library basicnetservice;

import 'package:flutter/widgets.dart';
import 'package:flutter_module/demo/demo_http/net/result_data.dart';

import 'basic_net_service.dart';

class AppApi extends BasicNetService {
  /// 获取天气的接口
  static const String _GET_WEATHER = "/";

  static AppApi _instance;

  static AppApi getInstance() {
    if (_instance == null) {
      _instance = AppApi();
    }
    return _instance;
  }

  Future<ResultData> getWeather(BuildContext context) async {
    Map<String, dynamic> param = {};
    param["type"] = "1";
    ResultData resultData = await get(_GET_WEATHER,
        params: param, context: context);
    return resultData;
  }
}