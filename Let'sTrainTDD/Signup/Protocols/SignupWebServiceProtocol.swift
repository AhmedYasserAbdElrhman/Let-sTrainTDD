//
//  SignupWebServiceProtocol.swift
//  Let'sTrainTDD
//
//  Created by Ahmed Yasser on 01/03/2022.
//

import Foundation

protocol SignupWebServiceProtocol {
    func signup(body: SignupRequestBody, handler: @escaping (SignupResponseModel?, SignupErrors?) -> Void)
}
