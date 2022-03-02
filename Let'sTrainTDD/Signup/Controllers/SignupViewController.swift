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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
