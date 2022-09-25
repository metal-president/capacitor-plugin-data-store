import XCTest
@testable import Plugin

class NativeDataStoreTests: XCTestCase {
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testEcho() {
        // This is an example of a functional test case for a plugin.
        // Use XCTAssert and related functions to verify your tests produce the correct results.

        let implementation = NativeDataStore()
        let value = "Hello, World!"
        let result = implementation.echo(value)

        XCTAssertEqual(value, result)
    }

    func testStringValue() {
        let implementation = NativeDataStore()
        let key = "testSstring"
        let value = "test string"
        let result = implementation.setStringValue(key, value)
        let newValue = implementation.getStringValue(key, nil)

        XCTAssertTrue(result)
        XCTAssertEqual(value, newValue)
    }

    func testBoolValue() {
        let implementation = NativeDataStore()
        let key = "testBool"
        let value = true
        let result = implementation.setBoolValue(key, NSNumber(value: value))
        let newValue = implementation.getBoolValue(key, nil)

        XCTAssertTrue(result)
        XCTAssertEqual(value, newValue?.boolValue)
    }

    func testIntValue() {
        let implementation = NativeDataStore()
        let key = "testInt"
        let value = 12345
        let result = implementation.setIntValue(key, NSNumber(value: value))
        let newValue = implementation.getIntValue(key, nil)

        XCTAssertTrue(result)
        XCTAssertEqual(value, newValue?.intValue)
    }

    func testDoubleValue() {
        let implementation = NativeDataStore()
        let key = "testInt"
        let value = 12345.6789
        let result = implementation.setDoubleValue(key, NSNumber(value: value))
        let newValue = implementation.getDoubleValue(key, nil)

        XCTAssertTrue(result)
        XCTAssertEqual(value, newValue?.doubleValue)
    }

    func testClearValue() {
        let implementation = NativeDataStore()
        let key = "testSstring"
        let value = "test string"
        let result1 = implementation.setStringValue(key, value)
        let value1 = implementation.getStringValue(key, nil)
        let result2 = implementation.clearValue(key)
        let value2 = implementation.getStringValue(key, nil)

        XCTAssertTrue(result1)
        XCTAssertEqual(value, value1)
        XCTAssertTrue(result2)
        XCTAssertNil(value2)
    }
}
