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

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        signupFormModel = SignupFormModel(firstName: "Ahmad", lastName: "Yasser", email: "ahmad@app.com",
                                          password: "123456", repeatPassword: "123456")
        mockSignupModelValidator = MockSignupValidator()
        mockSignupWebService = MockSignupWebService()
        sut = SignupPresenter(formModelValidator: mockSignupModelValidator, webService: mockSignupWebService)

    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        signupFormModel = nil
        mockSignupModelValidator = nil
        mockSignupWebService = nil
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

}
