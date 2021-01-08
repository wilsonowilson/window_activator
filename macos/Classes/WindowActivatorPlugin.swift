import Cocoa
import FlutterMacOS

public class WindowActivatorPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "window_activator", binaryMessenger: registrar.messenger)
    let instance = WindowActivatorPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "activateWindow":
      NSApp.activate(ignoringOtherApps: true)
      result(true)
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
