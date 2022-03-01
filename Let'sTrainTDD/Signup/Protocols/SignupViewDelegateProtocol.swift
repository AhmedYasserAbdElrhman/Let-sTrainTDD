//
//  SignupViewDelegateProtocol.swift
//  Let'sTrainTDD
//
//  Created by Ahmed Yasser on 01/03/2022.
//

import Foundation

protocol SignupViewDelegateProtocol: AnyObject {
    func successfulSignup()
    func errorHandler(error: SignupErrors)
}
