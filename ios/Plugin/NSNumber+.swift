//
//  NSNumber+.swift
//  Plugin
//

import Foundation

extension NSNumber {
    static func nullableNumber(value: Bool?) -> NSNumber? {
        value != nil ? NSNumber(value: value!) : nil
    }

    static func nullableNumber(value: Int?) -> NSNumber? {
        value != nil ? NSNumber(value: value!) : nil
    }

    static func nullableNumber(value: Double?) -> NSNumber? {
        value != nil ? NSNumber(value: value!) : nil
    }
}
