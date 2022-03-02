//
//  SignupViewControllerTests.swift
//  Let'sTrainTDDTests
//
//  Created by Ahmed Yasser on 02/03/2022.
//

import XCTest
@testable import Let_sTrainTDD

class SignupViewControllerTests: XCTestCase {

    // MARK:- Variables
    var sut: SignupViewController!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = SignupViewController()
        sut.loadViewIfNeeded()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }

    
    func testSignupViewController_WhenCreated_HasRequiredTextFieldsEmpty() {
        
        // Assert
        XCTAssertEqual(sut.firstNameTextField.text, "")
        XCTAssertEqual(sut.lastNameTextField.text, "")
        XCTAssertEqual(sut.emailTextField.text, "")
        XCTAssertEqual(sut.passwordTextField.text, "")
        XCTAssertEqual(sut.repeatPasswordTextField.text, "")
    }
    
    
    func testSignupViewController_WhenCreated_HasSignupButtonAndAction() throws {
        
        // Arrange
        let signupButton: UIButton = try XCTUnwrap(sut.signupButton)
        // Act
        let signupButtonActions = try XCTUnwrap(signupButton.actions(forTarget: sut, forControlEvent: .touchUpInside))
        // Assert
        XCTAssertEqual(signupButtonActions.count, 1)
        XCTAssert(signupButtonActions.contains("signupTapped:"))
    }
    
    func testSignupViewController_WhenSignupButtonTapped_InvokesSignupProcess() {
        
        // Arrange
        let mockFormValidator = MockSignupValidator()
        let mockWebService = MockSignupWebService()
        let mockViewDelegate = MockSignupViewDelegate()
        let mockSignupPresenter = MockSignupPresenter(formModelValidator: mockFormValidator, webService: mockWebService, view: mockViewDelegate)
        sut.presenter = mockSignupPresenter
        // Act
        
        sut.signupButton.sendActions(for: .touchUpInside)
        // Assert
        XCTAssert(mockSignupPresenter.isSignupCalled)
    }
}
