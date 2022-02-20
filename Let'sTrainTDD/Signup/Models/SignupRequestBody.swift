//
//  SignupRequestBody.swift
//  Let'sTrainTDD
//
//  Created by Ahmed Yasser on 20/02/2022.
//

import Foundation

struct SignupRequestBody: Encodable {
    
    let firstName: String
    let lastName: String
    let email: String
    let password: String
    
}
