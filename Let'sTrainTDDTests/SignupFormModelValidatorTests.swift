//
//  SignupFormModelValidatorTests.swift
//  Let'sTrainTDDTests
//
//  Created by Ahmed Yasser on 15/02/2022.
//

import XCTest
@testable import Let_sTrainTDD

class SignupFormModelValidatorTests: XCTestCase {

    var sut: SignupFormModelValidator!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = SignupFormModelValidator()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }
    
    
    func testSignupFormModelValidator_WhenValidFirstNameProvided_ShouldReturnTrue() {
        
        // Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "Ahmad")
        
        // Assert
        XCTAssert(isFirstNameValid, "isFirstNameValid Should Return True")
    }
    
    
    
    func testSignupFormModelValidator_WhenTooShortFirstNameProvided_ShouldReturnFalse() {
        
        // Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "A")
        
        // Assert
        XCTAssertFalse(isFirstNameValid, "isFirstNameValid Should Return False For a first name that is shorter than \(SignupConstants.firstNameMinLength) chars")
    }
    
    
    func testSignupFormModelValidator_WhenTooLongFirstNameProvided_ShouldReturnFalse() {
        
        // Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "AhmadAhmad")
        // Assert
        XCTAssertFalse(isFirstNameValid, "isFirstNameValid Should Return False For a first name that is longer than \(SignupConstants.firstNameMaxLength) chars")
    }

    func testSignupFormModelValidator_WhenValidLastNameProvided_ShouldReturnTrue() {
        
        // Act
        let isLastNameValid = sut.isLastNameValid(lastName: "Yasser")
        
        // Assert
        XCTAssert(isLastNameValid, "isLastNameValid Should Return True")
    }
    
    
    
    func testSignupFormModelValidator_WhenTooShortLastNameProvided_ShouldReturnFalse() {
        
        // Act
        let isLastNameValid = sut.isLastNameValid(lastName: "Y")
        
        // Assert
        XCTAssertFalse(isLastNameValid, "isLastNameValid Should Return False For a first name that is shorter than \(SignupConstants.lastNameMinLength) chars")
    }
    
    
    func testSignupFormModelValidator_WhenTooLongLastNameProvided_ShouldReturnFalse() {
        
        // Act
        let isLastNameValid = sut.isLastNameValid(lastName: "YasserYasser")
        // Assert
        XCTAssertFalse(isLastNameValid, "isLastNameValid Should Return False For a first name that is longer than \(SignupConstants.lastNameMaxLength) chars")
    }

}
