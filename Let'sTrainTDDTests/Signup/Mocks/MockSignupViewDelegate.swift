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
    
    func successfulSignup() {
        expectation?.fulfill()
    }
    
    func errorHandler(error: SignupErrors) {
        
    }
}
