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
    
    
    func testSignupFormModelValidator_WhenValidEmailProvided_ShouldReturnTrue() {
        
        // Act
        let isEmailValid = sut.isEmailValid(email: "email@email.com")
        // Assert
        XCTAssert(isEmailValid, "Provided Valid Email And Should Return True")
    }

    func testSignupFormModelValidator_WhenInValidEmailProvided_ShouldReturnFalse() {
        
        // Act
        let isEmailValid = sut.isEmailValid(email: "email@email")
        // Assert
        XCTAssertFalse(isEmailValid, "Provided InValid Email And Should Return False")
    }

    func testSignupModelValidator_WhenValidPasswordProvided_ShouldReturnTrue() {
        
        // Act
        let isPasswordValid = sut.isPasswordValid(password: "123456")
        // Assert
        XCTAssert(isPasswordValid, "The isPasswordValid() should have returned TRUE for a valid password")
    }
    
    func testSignupModelValidator_WhenTooShortPasswordProvided_ShouldReturnFalse() {
        
        // Act
        let isPasswordValid = sut.isPasswordValid(password: "123")
        // Assert
        XCTAssertFalse(isPasswordValid, "The isPasswordValid() should have returned FALSE for a too short password")
    }

    func testSignupModelValidator_WhenTooLongPasswordProvided_ShouldReturnFalse() {
        
        // Act
        let isPasswordValid = sut.isPasswordValid(password: "12345678901234567")
        // Assert
        XCTAssertFalse(isPasswordValid, "The isPasswordValid() should have returned FALSE for a too long password")
    }

    
    func testSignupModelValidator_WhenEqualPasswordsProvided_ShouldReturnTrue() {
        
        // Act
        let isPassowrdsMatch = sut.isPasswordsMatch(password: "123456", confirmPassword: "123456")
        // Assert
        XCTAssert(isPassowrdsMatch,  "The isPasswordMatch should have returned TRUE for Equal Passwords")
    }

    
    func testSignupModelValidator_WhenNotEqualPasswordsProvided_ShouldReturnFalse() {
        
        // Act
        let isPassowrdsMatch = sut.isPasswordsMatch(password: "1234567", confirmPassword: "123456")
        // Assert
        XCTAssertFalse(isPassowrdsMatch,  "The isPasswordMatch should have returned FALSE for Not Equal Passwords")
    }

}
