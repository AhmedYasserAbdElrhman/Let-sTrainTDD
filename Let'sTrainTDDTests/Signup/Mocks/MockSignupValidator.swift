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
    var isLastNameValidated = false
    var isEmailValidated = false
    var isPasswordValidated = false
    var isPasswordMatchingValidated = false
    // MARK:- Functions

    func isFirstNameValid(firstName: String) -> Bool {
        isFirstNameValidated = true
        return isFirstNameValidated
    }
    
    func isLastNameValid(lastName: String) -> Bool {
        isLastNameValidated = true
        return isLastNameValidated
    }
    
    func isEmailValid(email: String) -> Bool {
        isEmailValidated = true
        return isEmailValidated
    }
    
    func isPasswordValid(password: String) -> Bool {
        isPasswordValidated = true
        return isPasswordValidated
    }
    
    func isPasswordsMatch(password: String, confirmPassword: String) -> Bool {
        isPasswordMatchingValidated = true
        return isPasswordMatchingValidated
    }
    
    
}
