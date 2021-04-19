//
//  TestHomework11UITests.swift
//  TestHomework11UITests
//
//  Created by Roman Kuzmich on 19.04.2021.
//

import XCTest

class TestHomework11UITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test1() throws {
        let app = XCUIApplication()
        app.activate()
        app.textFields["Login"].tap()
        app.textFields["Login"].typeText("1")
        app.textFields["Password"].tap()
        app.textFields["Password"].typeText("2")
        app/*@START_MENU_TOKEN@*/.staticTexts["Enter"]/*[[".buttons[\"Enter\"].staticTexts[\"Enter\"]",".staticTexts[\"Enter\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.alerts["Enter valid email"].scrollViews.otherElements.buttons["Ok"].tap()
    }
    
    func test2() throws {
        
        let app = XCUIApplication()
        app.activate()
        app.textFields["Login"].tap()
        app.textFields["Login"].typeText("qwe@qwe.qwe")
        app.textFields["Password"].tap()
        app.textFields["Password"].typeText("123Qweqwe")
        app/*@START_MENU_TOKEN@*/.staticTexts["Enter"]/*[[".buttons[\"Enter\"].staticTexts[\"Enter\"]",".staticTexts[\"Enter\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
