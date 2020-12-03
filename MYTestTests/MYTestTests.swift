//
//  MYTestTests.swift
//  MYTestTests
//
//  Created by Bill Martensson on 2020-12-02.
//

import XCTest

class MYTestTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testhejhopp()
    {
        
    }
    
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        XCTAssertEqual(Person().oddEven(numberText: "23"), "Ojämn")
        XCTAssertEqual(Person().oddEven(numberText: "2"), "FÖR LITET TAL")
        XCTAssertEqual(Person().oddEven(numberText: "28"), "Jämn")
        XCTAssertEqual(Person().oddEven(numberText: "797"), "Ojämn")
        XCTAssertEqual(Person().oddEven(numberText: ""), "FEL")
        XCTAssertEqual(Person().oddEven(numberText: "Banan"), "FEL")
        XCTAssertEqual(Person().oddEven(numberText: "-1"), "FÖR LITET TAL")
        XCTAssertEqual(Person().oddEven(numberText: "9999"), "FÖR STORT TAL")

    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
