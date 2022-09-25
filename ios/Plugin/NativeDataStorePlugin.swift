import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(NativeDataStorePlugin)
public class NativeDataStorePlugin: CAPPlugin {
    private let implementation = NativeDataStore()

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }

    @objc func setStringValue(_ call: CAPPluginCall) {
        let key = call.getString("key")
        let value = call.getString("value")
        call.resolve([
            "result": implementation.setStringValue(key, value)
        ])
    }

    @objc func setBoolValue(_ call: CAPPluginCall) {
        let key = call.getString("key")
        let value = NSNumber.nullableNumber(value: call.getBool("value"))
        call.resolve([
            "result": implementation.setBoolValue(key, value)
        ])
    }

    @objc func setIntValue(_ call: CAPPluginCall) {
        let key = call.getString("key")
        let value = NSNumber.nullableNumber(value: call.getInt("value"))
        call.resolve([
            "result": implementation.setIntValue(key, value)
        ])
    }

    @objc func setDoubleValue(_ call: CAPPluginCall) {
        let key = call.getString("key")
        let value = NSNumber.nullableNumber(value: call.getDouble("value"))
        call.resolve([
            "result": implementation.setDoubleValue(key, value)
        ])
    }

    @objc func getString(_ call: CAPPluginCall) {
        let key = call.getString("key")
        let defaultValue = call.getString("default")
        call.resolve([
            "value": implementation.getStringValue(key, defaultValue) ?? NSNull()
        ])
    }

    @objc func getBool(_ call: CAPPluginCall) {
        let key = call.getString("key")
        let defaultValue = NSNumber.nullableNumber(value: call.getBool("default"))
        call.resolve([
            "value": implementation.getBoolValue(key, defaultValue) ?? NSNull()
        ])
    }

    @objc func getInt(_ call: CAPPluginCall) {
        let key = call.getString("key")
        let defaultValue = NSNumber.nullableNumber(value: call.getInt("default"))
        call.resolve([
            "value": implementation.getIntValue(key, defaultValue) ?? NSNull()
        ])
    }

    @objc func getDouble(_ call: CAPPluginCall) {
        let key = call.getString("key")
        let defaultValue = NSNumber.nullableNumber(value: call.getDouble("default"))
        call.resolve([
            "value": implementation.getDoubleValue(key, defaultValue) ?? NSNull()
        ])
    }

    @objc func clearValue(_ call: CAPPluginCall) {
        let key = call.getString("key")
        call.resolve([
            "result": implementation.clearValue(key)
        ])
    }

    @objc func allClear(_ call: CAPPluginCall) {
        call.resolve([
            "result": implementation.allClear()
        ])
    }
}
