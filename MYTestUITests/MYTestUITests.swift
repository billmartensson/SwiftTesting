//
//  MYTestUITests.swift
//  MYTestUITests
//
//  Created by Bill Martensson on 2020-12-03.
//

import XCTest

class MYTestUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let siffraTF = app.textFields["Siffra"]
        
        siffraTF.tap()
        
        siffraTF.typeText("abc")
        
        app.buttons["Tryck"].tap()
        
        let fullScreenshot = XCUIScreen.main.screenshot()
        let screenshot = XCTAttachment(screenshot: fullScreenshot)
        screenshot.lifetime = .keepAlways
        add(screenshot)
        
        XCTAssertEqual(app.staticTexts["resulttext"].label, "FEL")
        let windowScreenshot = app.windows.firstMatch.screenshot()
        siffraTF.tap()
        
        app.keys["delete"].tap()
        app.keys["delete"].tap()
        app.keys["delete"].tap()
        
        siffraTF.typeText("72")
        
        app.buttons["Tryck"].tap()
        
        XCTAssertEqual(app.staticTexts["resulttext"].label, "Jämn")

        
        let fullScreenshot2 = XCUIScreen.main.screenshot()
        let screenshot2 = XCTAttachment(screenshot: fullScreenshot2)
        screenshot2.lifetime = .keepAlways
        add(screenshot2)
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
