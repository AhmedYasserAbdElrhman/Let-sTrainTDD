//
//  MockSignupPresenter.swift
//  Let'sTrainTDDTests
//
//  Created by Ahmed Yasser on 02/03/2022.
//

import Foundation
@testable import Let_sTrainTDD

class MockSignupPresenter: SignupPresenterProtocol {
    
    // MARK:- Variables
    var isSignupCalled = false
    
    
    required init(formModelValidator: SignupModelValidatorProtocol, webService: SignupWebServiceProtocol, view: SignupViewDelegateProtocol) {
        //
    }
    
    func signup(model: SignupFormModel) {
        isSignupCalled = true
    }
 
}
