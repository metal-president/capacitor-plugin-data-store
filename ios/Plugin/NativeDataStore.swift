import Foundation

@objc public class NativeDataStore: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
