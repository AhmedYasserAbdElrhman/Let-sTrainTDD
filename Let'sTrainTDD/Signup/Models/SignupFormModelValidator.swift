//
//  SignupFormModelValidator.swift
//  Let'sTrainTDD
//
//  Created by Ahmed Yasser on 15/02/2022.
//

import Foundation

class SignupFormModelValidator: SignupModelValidatorProtocol {
    
    private let invalidCharacters = CharacterSet(charactersIn: "{}")
    func isFirstNameValid(firstName: String) -> Bool {
        guard firstName.count > SignupConstants.firstNameMinLength,
              firstName.count < SignupConstants.firstNameMaxLength else {return false}
        return true
    }

    func isLastNameValid(lastName: String) -> Bool {
        guard lastName.count > SignupConstants.lastNameMinLength,
              lastName.count < SignupConstants.lastNameMaxLength else {return false}
        return true
    }
    
    func isEmailValid(email: String) -> Bool {
        let pattern =
            "[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?"
        let predicate = NSPredicate(format: "SELF MATCHES %@", pattern)
        return predicate.evaluate(with: email)

    }
    
    func isPasswordValid(password: String) -> Bool {
        guard password.count >= SignupConstants.passwordMinLenght,
              password.count <= SignupConstants.passwordMaxLenght else {return false}
        return true
    }
    
    func isPasswordsMatch(password: String, confirmPassword: String) -> Bool {
        return password == confirmPassword
    }

    
    func isFirstNameValidWithCharacters(firstName: String) throws -> Bool {
        
        if firstName.rangeOfCharacter(from: invalidCharacters) != nil {
            throw SignupErrors.illegalCharactersFound
        }
        
        return isFirstNameValid(firstName: firstName)
    }
}
