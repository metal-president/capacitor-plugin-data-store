import Foundation

@objc public class NativeDataStore: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }

    @objc public func setStringValue(_ key: String?, _ value: String?) -> Bool {
        guard let key = key else { return false }
        UserDefaults.standard.set(value, forKey: key)
        UserDefaults.standard.synchronize()
        return true
    }

    @objc public func setBoolValue(_ key: String?, _ value: NSNumber?) -> Bool {
        guard let key = key else { return false }
        UserDefaults.standard.set(value?.boolValue, forKey: key)
        UserDefaults.standard.synchronize()
        return true
    }

    @objc public func setIntValue(_ key: String?, _ value: NSNumber?) -> Bool {
        guard let key = key else { return false }
        UserDefaults.standard.set(value?.intValue, forKey: key)
        UserDefaults.standard.synchronize()
        return true
    }

    @objc public func setDoubleValue(_ key: String?, _ value: NSNumber?) -> Bool {
        guard let key = key else { return false }
        UserDefaults.standard.set(value?.doubleValue, forKey: key)
        UserDefaults.standard.synchronize()
        return true
    }

    @objc public func getStringValue(_ key: String?, _ defaultValue: String?) -> String? {
        guard let key = key else { return nil }
        return UserDefaults.standard.string(forKey: key) ?? defaultValue
    }

    @objc public func getBoolValue(_ key: String?, _ defaultValue: NSNumber?) -> NSNumber? {
        guard let key = key else { return nil }
        let value: Bool?
        if UserDefaults.standard.object(forKey: key) == nil {
            value = defaultValue?.boolValue
        } else {
            value = UserDefaults.standard.bool(forKey: key)
        }
        return NSNumber.nullableNumber(value: value)
    }

    @objc public func getIntValue(_ key: String?, _ defaultValue: NSNumber?) -> NSNumber? {
        guard let key = key else { return nil }
        let value: Int?
        if UserDefaults.standard.object(forKey: key) == nil {
            value = defaultValue?.intValue
        } else {
            value = UserDefaults.standard.integer(forKey: key)
        }
        return NSNumber.nullableNumber(value: value)
    }

    @objc public func getDoubleValue(_ key: String?, _ defaultValue: NSNumber?) -> NSNumber? {
        guard let key = key else { return nil }
        let value: Double?
        if UserDefaults.standard.object(forKey: key) == nil {
            value = defaultValue?.doubleValue
        } else {
            value = UserDefaults.standard.double(forKey: key)
        }
        return NSNumber.nullableNumber(value: value)
    }

    @objc public func clearValue(_ key: String?) -> Bool {
        guard let key = key else { return false }
        UserDefaults.standard.removeObject(forKey: key)
        UserDefaults.standard.synchronize()
        return true
    }

    @objc public func allClear() -> Bool {
        UserDefaults.standard.removePersistentDomain(forName: Bundle.main.bundleIdentifier!)
        UserDefaults.standard.synchronize()
        return true
    }
}
