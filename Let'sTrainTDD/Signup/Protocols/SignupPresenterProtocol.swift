//
//  SignupPresenterProtocol.swift
//  Let'sTrainTDD
//
//  Created by Ahmed Yasser on 02/03/2022.
//

import Foundation

protocol SignupPresenterProtocol {
    init(formModelValidator: SignupModelValidatorProtocol, webService: SignupWebServiceProtocol, view: SignupViewDelegateProtocol)
    func signup(model: SignupFormModel)
}
