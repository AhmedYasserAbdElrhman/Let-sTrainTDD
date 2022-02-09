//
//  TearDownTestExample.swift
//  Let'sTrainTDDTests
//
//  Created by Ahmed Yasser on 09/02/2022.
//

import XCTest

class TearDownTestExample: XCTestCase {

    override class func setUp() {
        print("***** Class setUp() method is called *****")
    }
    override func setUpWithError() throws {
        print("***** Instance setUpWithError() method is called *****")
    }

    override func tearDownWithError() throws {
        print("***** Instance tearDownWithError() method is called *****")
    }
    
    override class func tearDown() {
        print("***** Class tearDown() method is called *****")
    }

    func testExample() throws {
        print("***** Test method is called *****")
        
        addTeardownBlock {
            print("***** TearDownBlock is called when test method ends *****")

        }

    }
    
    
    func testExample2() throws {
        print("***** Test2 method is called *****")
        
        addTeardownBlock {
            print("***** TearDownBlock2 is called when test method ends *****")

        }

    }


}
