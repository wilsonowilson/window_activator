import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:window_activator/window_activator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  void setWindowAsFocus() async {
    await Future.delayed(const Duration(seconds: 5));

    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      await WindowActivator.activateWindow;
    } on PlatformException catch (e) {
      print(e);
      print('failed to set focus');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: FlatButton(
            child: Text('Set focus'),
            onPressed: setWindowAsFocus,
          ),
        ),
      ),
    );
  }
}
