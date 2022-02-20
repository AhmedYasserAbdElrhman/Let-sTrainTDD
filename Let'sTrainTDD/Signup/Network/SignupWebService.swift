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
        guard let url = URL(string: urlString) else { return  }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        let body = try? JSONEncoder().encode(body)
        request.httpBody = body
        
    }
}
