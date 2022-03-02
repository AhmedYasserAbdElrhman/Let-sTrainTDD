//
//  SignupViewController.swift
//  Let'sTrainTDD
//
//  Created by Ahmed Yasser on 02/03/2022.
//

import UIKit

class SignupViewController: UIViewController {

    // MARK:- IBoutlets
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var repeatPasswordTextField: UITextField!
    @IBOutlet weak var signupButton: UIButton!
    
    
    // MARK:- Variables
    var presenter: SignupPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    // MARK:- IBActions
    
    @IBAction func signupTapped(_ sender: UIButton) {
        let formModel = SignupFormModel(firstName: firstNameTextField.text ?? "",
                                        lastName: lastNameTextField.text ?? "",
                                        email: emailTextField.text ?? "",
                                        password: passwordTextField.text ?? "",
                                        repeatPassword: repeatPasswordTextField.text ?? "")
        presenter.signup(model: formModel)
    }

}

extension SignupViewController: SignupViewDelegateProtocol {
    func successfulSignup() {
        //
    }
    
    func errorHandler(error: SignupErrors) {
        //
    }
    
    
}
