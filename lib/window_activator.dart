// You have generated a new plugin project without
// specifying the `--platforms` flag. A plugin project supports no platforms is generated.
// To add platforms, run `flutter create -t plugin --platforms <platforms> .` under the same
// directory. You can also find a detailed instruction on how to add platforms in the `pubspec.yaml` at https://flutter.dev/docs/development/packages-and-plugins/developing-packages#plugin-platforms.

import 'dart:async';

import 'package:flutter/services.dart';

class WindowActivator {
  static const MethodChannel _channel = const MethodChannel('window_activator');

  static Future<bool> activateWindow() async {
    final result = await _channel.invokeMethod('activateWindow');
    return result;
  }

  static Future<bool> isMiniaturized() async {
    final result = await _channel.invokeMethod('isMiniaturized');
    return result;
  }

  static Future<bool> miniaturize() async {
    final result = await _channel.invokeMethod('miniaturize');
    return result;
  }

  static Future<bool> deminiaturize() async {
    final result = await _channel.invokeMethod('deminiaturize');
    return result;
  }
}
