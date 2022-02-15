//
//  SignupFormModelValidator.swift
//  Let'sTrainTDD
//
//  Created by Ahmed Yasser on 15/02/2022.
//

import Foundation

class SignupFormModelValidator {
    
    
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

}
