//
//  SignupPresenter.swift
//  Let'sTrainTDD
//
//  Created by Ahmed Yasser on 24/02/2022.
//

import Foundation

class SignupPresenter {
    
    // MARK:- Variables
    private var formModelValidator: SignupModelValidatorProtocol
    
    init(formModelValidator: SignupModelValidatorProtocol) {
        self.formModelValidator = formModelValidator
    }
    
    
    func signup(model: SignupFormModel) {
        guard formModelValidator.isFirstNameValid(firstName: model.firstName) else {return}
        guard formModelValidator.isLastNameValid(lastName: model.lastName) else {return}
        guard formModelValidator.isEmailValid(email: model.email) else {return}
        guard formModelValidator.isPasswordValid(password: model.password) else {return}
        guard formModelValidator.isPasswordsMatch(password: model.password, confirmPassword: model.repeatPassword) else {return}
        
    }
}
