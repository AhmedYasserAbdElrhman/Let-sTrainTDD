//
//  SignupErrors.swift
//  Let'sTrainTDD
//
//  Created by Ahmed Yasser on 20/02/2022.
//

import Foundation

enum SignupErrors: Error, Equatable {
    
    case parsingError
    case invalidURLString
    case failedRequest
}
