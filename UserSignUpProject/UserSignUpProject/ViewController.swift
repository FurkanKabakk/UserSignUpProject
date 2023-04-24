//
//  ViewController.swift
//  UserSignUpProject
//
//  Created by furkan on 28.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var password2Text: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func signupClicked(_ sender: Any) {
        if usernameText.text == ""{
            makeAlert(titleInput: "Error!", messageInput: "Username Not Found")
        }else if passwordText.text == ""{
            makeAlert(titleInput: "Error", messageInput: "Password Not Found")
        }else if passwordText.text != password2Text.text{
            makeAlert(titleInput: "Error", messageInput: "Passwords Not Match")
        }else{
            makeAlert(titleInput: "Success", messageInput: "User Sign Up")
        }
    
    }
 
    func makeAlert(titleInput: String, messageInput: String){
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
        alert.addAction(okButton)
        self.present(alert, animated: true)
    }
    
    
}

