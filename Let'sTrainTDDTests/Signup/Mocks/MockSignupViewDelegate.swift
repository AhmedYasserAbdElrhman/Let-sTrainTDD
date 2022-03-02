//
//  MockSignupViewDelegate.swift
//  Let'sTrainTDDTests
//
//  Created by Ahmed Yasser on 01/03/2022.
//

import Foundation
import XCTest
@testable import Let_sTrainTDD
class MockSignupViewDelegate: SignupViewDelegateProtocol {
    
    var expectation: XCTestExpectation?
    var successfulSignupCounter = 0
    var errorCounter = 0
    var signupError: SignupErrors?
    
    func successfulSignup() {
        successfulSignupCounter += 1
        expectation?.fulfill()
    }
    
    func errorHandler(error: SignupErrors) {
        errorCounter += 1
        signupError = error
        expectation?.fulfill()
    }
}
