//
//  SignupWebServiceTests.swift
//  Let'sTrainTDDTests
//
//  Created by Ahmed Yasser on 20/02/2022.
//

import XCTest
@testable import Let_sTrainTDD

class SignupWebServiceTests: XCTestCase {

    var sut: SignupWebService!
    var signupRequestBody: SignupRequestBody!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        let config = URLSessionConfiguration.ephemeral
        config.protocolClasses = [MockURLProtocol.self]
        let urlSession = URLSession(configuration: config)
        sut = SignupWebService(urlString: SignupConstants.signupURLString, urlSession: urlSession)
        signupRequestBody = SignupRequestBody(firstName: "Ahmad", lastName: "Yasser",
                                                  email: "ahmad@app.com", password: "123456")

    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
        signupRequestBody = nil
        MockURLProtocol.stubResponseData = nil
    }


    func testSignupWebService_WhenGivenSuccessfullResponse_ReturnsSuccess() {
        
        // Arrange
        let jsonDict = ["status": "ok"]
        MockURLProtocol.stubResponseData = try? JSONSerialization.data(withJSONObject: jsonDict, options: .prettyPrinted)
        
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
        let jsonDict = ["error": "some_error"]
        MockURLProtocol.stubResponseData = try? JSONSerialization.data(withJSONObject: jsonDict, options: .prettyPrinted)
        
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
    
    
    func testSignupWebService_WhenEmptyURLStringProvided_ReturnsError() {
        
        // Arrange
        let expectation = self.expectation(description: "An empty request URL string ")
        sut = SignupWebService(urlString: "")
        
        // Act
        sut.signup(body: signupRequestBody) { responseModel, error in
            
            // Assert
            XCTAssertEqual(error, SignupErrors.invalidURLString)
            XCTAssertNil(responseModel)
            expectation.fulfill()
        }
        
        
        self.wait(for: [expectation], timeout: 3)
    }

}
