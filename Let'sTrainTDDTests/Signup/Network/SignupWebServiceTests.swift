//
//  SignupWebServiceTests.swift
//  Let'sTrainTDDTests
//
//  Created by Ahmed Yasser on 20/02/2022.
//

import XCTest
@testable import Let_sTrainTDD

class SignupWebServiceTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }


    func testSignupWebService_WhenGivenSuccessfullResponse_ReturnsSuccess() {
        
        // Arrange
        let sut = SignupWebService(urlString: "https://tlyqhtlbn8.execute-api.us-east-1.amazonaws.com/prod/signup-mock-service/users")
        let signupRequestBody = SignupRequestBody(firstName: "Ahmad", lastName: "Yasser",
                                                  email: "ahmad@app.com", password: "123456")
        
        let expectation = self.expectation(description: "Signup Web Service Response Expectation")
        // Act
        sut.signup(body: signupRequestBody) { (responseModel, error) in
            
            // Assert
            XCTAssertEqual(responseModel?.status, "ok")
            expectation.fulfill()
        }
        
        
        self.wait(for: [expectation], timeout: 5)
        
    }

}
