import Cocoa
import FlutterMacOS

public class WindowActivatorPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "window_activator", binaryMessenger: registrar.messenger)
    let instance = WindowActivatorPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    let mainWindow = NSApp.windows[0]
    switch call.method {
    case "activateWindow":
      NSApp.activate(ignoringOtherApps: true)
      result(true)
    case "isMiniaturized":
      let isMiniaturized = mainWindow.isMiniaturized;
      result(isMiniaturized)
    case "miniaturize":
      mainWindow.miniaturize(self);
      result(true)
    case "deminiaturize":
      mainWindow.deminiaturize(self);
      result(true)
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
