//
//  SignupPresenterTests.swift
//  Let'sTrainTDDTests
//
//  Created by Ahmed Yasser on 24/02/2022.
//

import XCTest
@testable import Let_sTrainTDD
class SignupPresenterTests: XCTestCase {

    var signupFormModel: SignupFormModel!
    var mockSignupModelValidator: MockSignupValidator!
    var mockSignupWebService: MockSignupWebService!
    var sut: SignupPresenter!
    var mockSignupViewDelegate: MockSignupViewDelegate!
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        signupFormModel = SignupFormModel(firstName: "Ahmad", lastName: "Yasser", email: "ahmad@app.com",
                                          password: "123456", repeatPassword: "123456")
        mockSignupModelValidator = MockSignupValidator()
        mockSignupWebService = MockSignupWebService()
        mockSignupViewDelegate = MockSignupViewDelegate()
        sut = SignupPresenter(formModelValidator: mockSignupModelValidator, webService: mockSignupWebService, view: mockSignupViewDelegate)

    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        signupFormModel = nil
        mockSignupModelValidator = nil
        mockSignupWebService = nil
        mockSignupViewDelegate = nil
        sut = nil
    }

    
    func testSignupPresenter_WhenInformationProvided_WillValidateEachProperty() {
        
        // Arrange
        // Act
        sut.signup(model: signupFormModel)
        
        // Assert
        XCTAssert(mockSignupModelValidator.isFirstNameValidated)
        XCTAssert(mockSignupModelValidator.isLastNameValidated)
        XCTAssert(mockSignupModelValidator.isEmailValidated)
        XCTAssert(mockSignupModelValidator.isPasswordValidated)
        XCTAssert(mockSignupModelValidator.isPasswordMatchingValidated)
    }
    
    
    func testSignupPresenter_WhenGivenValidFormModel_ShouldCallSignupMethod() {
        
        // Arrange
        // Act
        sut.signup(model: signupFormModel)

        // Assert
        XCTAssert(mockSignupWebService.isSignupMethodCalled)
    }
    
    func testSignupPresenter_WhenSignupOperationSuccessful_CallSuccessOnViewDelegate() {
        
        // Arrange
        let expectation = self.expectation(description: "Expected the successfulSignup() method to be called")
        mockSignupViewDelegate.expectation = expectation
        // Act
        sut.signup(model: signupFormModel)
        self.wait(for: [expectation], timeout: 5)
        // Assert
    }

}
