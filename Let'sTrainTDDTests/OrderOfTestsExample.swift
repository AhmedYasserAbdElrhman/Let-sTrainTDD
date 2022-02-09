//
//  OrderOfTestsExample.swift
//  Let'sTrainTDDTests
//
//  Created by Ahmed Yasser on 09/02/2022.
//

import XCTest

class OrderOfTestsExample: XCTestCase {

    
    override func setUp() {
        print("setUp")
    }
    
    override func tearDown() {
        print("tearDown")
    }
    
    func testA() throws {
        print("Running Test A")
    }
    
    func testB() throws {
        print("Running Test B")
    }

    func testC() throws {
        print("Running Test C")
    }

    func testD() throws {
        print("Running Test D")
    }

}
