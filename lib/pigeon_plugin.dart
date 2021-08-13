
import 'dart:async';

import 'package:flutter/services.dart';
import 'messages.dart';

class PigeonPlugin {
  static ExampleApi? _apiInstance;
  static StoreApi? _storeApiInstance;

  static ExampleApi? get _api {
    if (_apiInstance == null) {
      _apiInstance = ExampleApi();
    }
    return _apiInstance;
  }

  static StoreApi? get _storeApi {
    if (_storeApiInstance == null) {
      _storeApiInstance = StoreApi();
    }
    return _storeApiInstance;
  }

  static Future<String?> get platformVersion async {
    Version version = await _api!.getPlatformVersion();
    return version.string;
  }

  static Future<void> sell(Goods goods) async {
    await _storeApi!.sell(goods);
  }
}
