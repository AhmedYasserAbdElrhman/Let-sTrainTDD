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
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    // MARK:- IBActions
    
    @IBAction func signupTapped(_ sender: UIButton) {
        
    }

}
