//
//  ViewController.swift
//  DesafioTelaDeCadastroBF
//
//  Created by Ellington Cavalcante on 26/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var adressTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTextField()
        validateButton()
        
    }
    
    @IBAction func tappedRegisterButton(_ sender: Any) {
        print("Cadastro realizado com sucesso!")
    }
    
    func validateButton() {
        if nameTextField.text == "" || adressTextField.text == "" || passwordTextField.text == "" {
            registerButton.isEnabled = false
        } else {
            registerButton.isEnabled = true
        }
    }
    
    func configureTextField() {
        nameTextField.delegate = self
        adressTextField.delegate = self
        passwordTextField.delegate = self
    }

}

// MARK - EXTENSIONS
extension ViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        if nameTextField.text == "" && adressTextField.text == "" && passwordTextField.text == ""  {
            nameTextField.layer.borderWidth = 2
            nameTextField.layer.borderColor = UIColor.red.cgColor
            adressTextField.layer.borderWidth = 2
            adressTextField.layer.borderColor = UIColor.red.cgColor
            passwordTextField.layer.borderWidth = 2
            passwordTextField.layer.borderColor = UIColor.red.cgColor
        } else {
            nameTextField.layer.borderColor = UIColor.lightGray.cgColor
            adressTextField.layer.borderColor = UIColor.lightGray.cgColor
            passwordTextField.layer.borderColor = UIColor.lightGray.cgColor
        }
        
        validateButton()
        
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if nameTextField.text == "" || adressTextField.text == "" || passwordTextField.text == ""  {
            nameTextField.layer.borderWidth = 2
            nameTextField.layer.borderColor = UIColor.blue.cgColor
            adressTextField.layer.borderWidth = 2
            adressTextField.layer.borderColor = UIColor.blue.cgColor
            passwordTextField.layer.borderWidth = 2
            passwordTextField.layer.borderColor = UIColor.blue.cgColor
        } else {
            nameTextField.layer.borderColor = UIColor.lightGray.cgColor
            adressTextField.layer.borderColor = UIColor.lightGray.cgColor
            passwordTextField.layer.borderColor = UIColor.lightGray.cgColor
        }
        
        validateButton()
    }
    
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            if nameTextField.text == "" && adressTextField.text == "" && passwordTextField.text == ""  {
                nameTextField.layer.borderWidth = 2
                nameTextField.layer.borderColor = UIColor.red.cgColor
                adressTextField.layer.borderWidth = 2
                adressTextField.layer.borderColor = UIColor.red.cgColor
                passwordTextField.layer.borderWidth = 2
                passwordTextField.layer.borderColor = UIColor.red.cgColor
            }
            textField.resignFirstResponder()
            return true
        }
    
}
