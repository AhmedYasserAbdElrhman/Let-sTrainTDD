//
//  SignupFormModelValidatorTests.swift
//  Let'sTrainTDDTests
//
//  Created by Ahmed Yasser on 15/02/2022.
//

import XCTest
@testable import Let_sTrainTDD

class SignupFormModelValidatorTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    
    func testSignupFormModelValidator_WhenValidFirstNameProvided_ShouldReturnTrue() {
        
        // Arrange
        let sut = SignupFormModelValidator()
        
        // Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "Ahmad")
        // Assert
        XCTAssert(isFirstNameValid, "isFirstNameValid Should Return True")
    }
    
    
}
