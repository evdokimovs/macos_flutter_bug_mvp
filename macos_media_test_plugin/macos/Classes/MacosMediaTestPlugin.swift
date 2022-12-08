import Cocoa
import FlutterMacOS
import AVFoundation

public class MacosMediaTestPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "macos_media_test_plugin", binaryMessenger: registrar.messenger)
    let instance = MacosMediaTestPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
    AVCaptureDevice.requestAccess(for: .video) { granted in }
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
        DispatchQueue.global(qos: .userInitiated).async {
          let video = AVCaptureDevice.default(for: AVMediaType.video)
        }      
        result("macOS " + ProcessInfo.processInfo.operatingSystemVersionString)
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
