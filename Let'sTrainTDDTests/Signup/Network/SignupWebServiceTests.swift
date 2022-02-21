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
        let config = URLSessionConfiguration.ephemeral
        config.protocolClasses = [MockURLProtocol.self]
        let urlSession = URLSession(configuration: config)
        let jsonDict = ["status": "ok"]
        MockURLProtocol.stubResponseData = try? JSONSerialization.data(withJSONObject: jsonDict, options: .prettyPrinted)
        let sut = SignupWebService(urlString: SignupConstants.signupURLString, urlSession: urlSession)
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
    
    
    
    func testSignupWebService_WhenRecievedDifferentJSONResponse_ErrorTookPlace() {
        // Arrange
        let config = URLSessionConfiguration.ephemeral
        config.protocolClasses = [MockURLProtocol.self]
        let urlSession = URLSession(configuration: config)
        let jsonDict = ["error": "some_error"]
        MockURLProtocol.stubResponseData = try? JSONSerialization.data(withJSONObject: jsonDict, options: .prettyPrinted)
        let sut = SignupWebService(urlString: SignupConstants.signupURLString, urlSession: urlSession)
        let signupRequestBody = SignupRequestBody(firstName: "Ahmad", lastName: "Yasser",
                                                  email: "ahmad@app.com", password: "123456")
        
        let expectation = self.expectation(description: "Signup Expectation for a response that contains different JSON structure")
        // Act
        sut.signup(body: signupRequestBody) { (responseModel, error) in
            
            // Assert
            XCTAssertNil(responseModel)
            XCTAssertEqual(error, SignupErrors.parsingError)
            expectation.fulfill()
        }
        
        
        self.wait(for: [expectation], timeout: 5)

    }

}
