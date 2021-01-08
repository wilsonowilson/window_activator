# window_activator

 A simple plugin built for macos to modify the window status. 
 It supports window activation (bring to front), as well as 
 miniaturization.

## Usage
``` dart
import 'package:window_activator/window_activator.dart';

Future testWindowActivation() async {
    // Bring window to front
    await WindowActivator.activateWindow();
    // Miniaturize window
    await WindowActivator.miniaturize();
    // Deminiaturize window
    await WindowActivator.deminiaturize();
    // Check if window is miniaturized
    await WindowActivator.isMiniaturized();
    
}
```
