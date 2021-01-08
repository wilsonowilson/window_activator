# window_activator

A simple plugin used to activate your application window (bring window to front)
on macos.

## Usage
``` dart
import 'package:window_activator/window_activator.dart';

Future testWindowActivation() async {
    // Brings window to front
    await WindowActivator.activateWindow();
}
```
