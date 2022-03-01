//
//  SignupPresenterTests.swift
//  Let'sTrainTDDTests
//
//  Created by Ahmed Yasser on 24/02/2022.
//

import XCTest
@testable import Let_sTrainTDD
class SignupPresenterTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    
    func testSignupPresenter_WhenInformationProvided_WillValidateEachProperty() {
        
        // Arrange
        let signupFormModel = SignupFormModel(firstName: "Ahmad", lastName: "Yasser", email: "ahmad@app.com",
                                              password: "123456", repeatPassword: "123456")
        let mockSignupModelValidator = MockSignupValidator()
        let sut = SignupPresenter(formModelValidator: mockSignupModelValidator)
        // Act
        sut.signup(model: signupFormModel)
        
        // Assert
        XCTAssert(mockSignupModelValidator.isFirstNameValidated)
    }

}
