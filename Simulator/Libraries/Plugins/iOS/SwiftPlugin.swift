import Foundation

@objc public class SwiftPlugin : NSObject {
    @objc public static func openSettings() {
        print("called openSettings method")
        guard let settingsUrl = URL(string: UIApplication.openSettingsURLString) else {
            return
        }
        if UIApplication.shared.canOpenURL(settingsUrl) {
            if #available(iOS 10.0, *) {
                print("hoge2!")
                UIApplication.shared.open(settingsUrl)
            } else {
                // Fallback on earlier versions
            }
        }
        
        
    }
}
