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
}
