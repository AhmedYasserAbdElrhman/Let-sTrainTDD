//
//  SignupModelValidatorProtocol.swift
//  Let'sTrainTDD
//
//  Created by Ahmed Yasser on 24/02/2022.
//

import Foundation

protocol SignupModelValidatorProtocol {
    func isFirstNameValid(firstName: String) -> Bool
    func isLastNameValid(lastName: String) -> Bool
    func isEmailValid(email: String) -> Bool
    func isPasswordValid(password: String) -> Bool
    func isPasswordsMatch(password: String, confirmPassword: String) -> Bool
}
