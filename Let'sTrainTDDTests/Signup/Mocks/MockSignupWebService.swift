//
//  MockSignupWebService.swift
//  Let'sTrainTDDTests
//
//  Created by Ahmed Yasser on 01/03/2022.
//

import Foundation
@testable import Let_sTrainTDD

class MockSignupWebService: SignupWebServiceProtocol {
    
    // MARK:- Variables
    var isSignupMethodCalled = false
    var shouldReturnError = false
    
    
    // MARK:- Functions
    
    func signup(body: SignupRequestBody, handler: @escaping (SignupResponseModel?, SignupErrors?) -> Void) {
        isSignupMethodCalled = true
        if shouldReturnError {
            handler(nil, SignupErrors.failedRequest)
        } else {
            handler(.init(status: "ok"), nil)
        }
    }
    

}
