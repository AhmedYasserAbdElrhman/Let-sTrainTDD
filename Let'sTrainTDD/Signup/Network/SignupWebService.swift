//
//  SignupWebService.swift
//  Let'sTrainTDD
//
//  Created by Ahmed Yasser on 20/02/2022.
//

import Foundation

class SignupWebService {
    
    private var urlString: String
    
    init(urlString: String) {
        self.urlString = urlString
    }

    func signup(body: SignupRequestBody, handler: @escaping (SignupResponseModel?, SignupErrors?) -> Void) {
        
    }
}
