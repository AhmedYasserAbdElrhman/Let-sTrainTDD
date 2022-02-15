//
//  SignupFormModelValidator.swift
//  Let'sTrainTDD
//
//  Created by Ahmed Yasser on 15/02/2022.
//

import Foundation

class SignupFormModelValidator {
    
    
    func isFirstNameValid(firstName: String) -> Bool {
        guard !firstName.isEmpty else {return false}
        return true
    }
    
}
