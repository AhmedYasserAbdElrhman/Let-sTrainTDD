//
//  TestCase.swift
//  Let'sTrainTDDTests
//
//  Created by Ahmed Yasser on 09/02/2022.
//

import XCTest

class TestCase: XCTestCase {

    static var classInstanceCounter = 0
    
    override class func setUp() {
        super.setUp()
    }
    
    override func setUpWithError() throws {
        TestCase.classInstanceCounter += 1
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    
    override class func tearDown() {
        super.tearDown()
        print("Class TearDown at Instance #\(TestCase.classInstanceCounter)")
    }
    func testExample1() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        print("Accessing Class Level Information. Running From Instance #\(TestCase.classInstanceCounter)")
    }
    
    func testExample2() {
        print("Accessing Class Level Information. Running From Instance #\(TestCase.classInstanceCounter)")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        print("Accessing Class Level Information. Running From Instance #\(TestCase.classInstanceCounter)")
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
