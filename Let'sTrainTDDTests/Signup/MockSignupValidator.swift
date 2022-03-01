//
//  MockSignupValidator.swift
//  Let'sTrainTDDTests
//
//  Created by Ahmed Yasser on 24/02/2022.
//

import Foundation
@testable import Let_sTrainTDD

class MockSignupValidator: SignupModelValidatorProtocol {

    // MARK:- Variables
    
    var isFirstNameValidated = false
    
    // MARK:- Functions

    func isFirstNameValid(firstName: String) -> Bool {
        isFirstNameValidated = true
        return isFirstNameValidated
    }
    
    func isLastNameValid(lastName: String) -> Bool {
        true
    }
    
    func isEmailValid(email: String) -> Bool {
        true
    }
    
    func isPasswordValid(password: String) -> Bool {
        true
    }
    
    func isPasswordsMatch(password: String, confirmPassword: String) -> Bool {
        true
    }
    
    
}
