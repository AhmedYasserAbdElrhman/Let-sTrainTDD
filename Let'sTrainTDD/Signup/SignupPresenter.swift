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
    }
}
