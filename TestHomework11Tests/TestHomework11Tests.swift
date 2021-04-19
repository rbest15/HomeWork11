//
//  TestHomework11Tests.swift
//  TestHomework11Tests
//
//  Created by Roman Kuzmich on 19.04.2021.
//

import XCTest
@testable import TestHomework11

class TestHomework11Tests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        
        XCTAssert(Validator.isValidPassword("qweqweqwe") == false)
        XCTAssert(Validator.isValidPassword("123qweqwe") == false)
        XCTAssert(Validator.isValidPassword("123QweqweqweQ") == true)
        XCTAssert(Validator.isValidPassword("1qQ") == false)
        
        XCTAssert(Validator.isValidEmail("rbest") == false)
        XCTAssert(Validator.isValidEmail("rbest@mail.") == false)
        XCTAssert(Validator.isValidEmail("rbestmail.ru") == false)
        XCTAssert(Validator.isValidEmail("rbest@mail.ru") == true)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
