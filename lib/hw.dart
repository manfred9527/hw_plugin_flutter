
import 'dart:async';

import 'package:flutter/services.dart';

class Hw {
  static const MethodChannel _channel = MethodChannel('hw');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
