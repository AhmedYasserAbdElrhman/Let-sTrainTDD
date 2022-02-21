//
//  SignupWebService.swift
//  Let'sTrainTDD
//
//  Created by Ahmed Yasser on 20/02/2022.
//

import Foundation

class SignupWebService {
    
    private var urlSession: URLSession
    private var urlString: String
    
    init(urlString: String, urlSession: URLSession = .shared) {
        self.urlString = urlString
        self.urlSession = urlSession
    }

    func signup(body: SignupRequestBody, handler: @escaping (SignupResponseModel?, SignupErrors?) -> Void) {
        guard let url = URL(string: urlString) else { return  }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        let body = try? JSONEncoder().encode(body)
        request.httpBody = body
        
        urlSession.dataTask(with: request) { data, response, error in
            
            if let data = data, let signupResponseModel = try? JSONDecoder().decode(SignupResponseModel.self, from: data ) {
                handler(signupResponseModel, nil)
            } else {
                handler(nil, SignupErrors.parsingError)
            }
        }.resume()
    }
}
