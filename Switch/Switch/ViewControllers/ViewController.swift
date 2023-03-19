//
//  ViewController.swift
//  Switch
//
//  Created by Игорь Пачкин on 1/3/23.
//

import UIKit

class ViewController: UIViewController {

    
    let singInLabel = UILabel()
    let emailLabel = UILabel()
    let email = UITextField()
    let passwordLabel = UILabel()
    let password = UITextField()
    let loginButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        self.singInLabel.frame = CGRect(x: 75, y: 230, width: 100, height: 100)
        self.view.addSubview(singInLabel)
        self.singInLabel.text = "Sing In"
        self.singInLabel.textColor = .black
        self.singInLabel.font = .boldSystemFont(ofSize: 23)
        
        self.emailLabel.frame = CGRect(x: 75, y: 285, width: 100, height: 100)
        self.view.addSubview(emailLabel)
        self.emailLabel.text = "Email"
        self.emailLabel.textColor = .red
        
        self.email.frame = CGRect(x: 75, y: 350, width: 250, height: 35)
        self.view.addSubview(email)
        self.email.borderStyle = .roundedRect
        
        self.passwordLabel.frame = CGRect(x: 75, y: 385, width: 100, height: 100)
        self.view.addSubview(passwordLabel)
        self.passwordLabel.text = "Password"
        self.passwordLabel.textColor = .red
        
        self.password.frame = CGRect(x: 75, y: 450, width: 250, height: 35)
        self.view.addSubview(password)
        self.password.borderStyle = .roundedRect
        self.password.isSecureTextEntry = true
        
        self.loginButton.frame = CGRect(x: 75, y: 540, width: 250, height: 50)
        self.view.addSubview(loginButton)
        self.loginButton.backgroundColor = .red
        self.loginButton.setTitle("Войти", for: .normal)
        self.loginButton.layer.cornerRadius = 5
        self.loginButton.setTitleColor(UIColor.white, for: .normal)
        // self.loginButton.titleLabel
        self.loginButton.addTarget(self, action: #selector(buttonClick), for: .touchUpInside)
    }

    @objc func buttonClick(){
        if email.text!.isEmpty || password.text!.isEmpty{
            let alert = UIAlertController(title: "Ошибка входа", message: "Введите логин и пароль", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "Ок", style: .default)
            alert.addAction(alertAction)
            self.present(alert, animated: true)
        }
        let secondController = ViewController2()
        navigationController?.pushViewController(secondController, animated: true)
        
    }

}

