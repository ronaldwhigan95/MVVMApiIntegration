//
//  LoginViewController.swift
//  MVVMApiIntegration
//
//  Created by Ronald Chester Whigan on 6/15/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    var loginForm: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemGray.withAlphaComponent(0.5)
        view.layer.cornerRadius = 20
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 1
        view.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        view.layer.shadowRadius = 10
        
        return view
    }()
    var username: UITextField = {
        let txtFld = UITextField()
        txtFld.translatesAutoresizingMaskIntoConstraints = false
        txtFld.placeholder = "Username"
        txtFld.backgroundColor = .white
        txtFld.borderStyle = .roundedRect
        
        return txtFld
    }()
    var password: UITextField = {
        let txtFld = UITextField()
        txtFld.translatesAutoresizingMaskIntoConstraints = false
        txtFld.placeholder = "Password"
        txtFld.isSecureTextEntry = true
        txtFld.backgroundColor = .white
        txtFld.borderStyle = .roundedRect
        
        return txtFld
    }()
    var isOptedToSaveSwitch: UISwitch = {
        let thisSwitch = UISwitch()
        thisSwitch.translatesAutoresizingMaskIntoConstraints = false
        thisSwitch.tintColor = .systemRed
        thisSwitch.backgroundColor = .systemRed
        thisSwitch.layer.cornerRadius = thisSwitch.frame.height / 2
        
        return thisSwitch
    }()
    var rememberMeLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Remember me?"
        
        return lbl
    }()
    var loginBtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Login", for: .normal)
        btn.backgroundColor = UIColor(hexString: "#004646")
        btn.setTitleColor(.white, for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        btn.layer.cornerRadius = 5
        btn.clipsToBounds = true
        
        return btn
    }()
    var bgImage: UIImageView = {
        let img = UIImageView()
        img.frame = UIScreen.main.bounds
        img.image = UIImage(named: "loginBg")
        img.contentMode = .scaleAspectFill
        
        return img
    }()
    
    var logo: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "logoImg")
        img.contentMode = .scaleAspectFit
        
        return img
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addSubviews()
    }
    
}


//Constraints
extension LoginViewController {
    func addSubviews() {
        view.addSubview(bgImage)
        view.addSubview(logo)
        view.sendSubviewToBack(bgImage)
        view.addSubview(loginForm)
        loginForm.addSubview(username)
                loginForm.addSubview(password)
                loginForm.addSubview(loginBtn)
                loginForm.addSubview(isOptedToSaveSwitch)
                loginForm.addSubview(rememberMeLabel)
        addConstraintsLoginForm()
    }
    
    func addConstraintsLoginForm() {
        NSLayoutConstraint.activate([
            // Login Form constraints
            loginForm.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.30),
            loginForm.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            loginForm.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            loginForm.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            // Username text field constraints
            username.heightAnchor.constraint(equalTo: loginForm.heightAnchor, multiplier: 0.15),
            username.topAnchor.constraint(equalTo: loginForm.topAnchor, constant: 20),
            username.leadingAnchor.constraint(equalTo: loginForm.leadingAnchor, constant: 20),
            username.trailingAnchor.constraint(equalTo: loginForm.trailingAnchor, constant: -20),
            
            // Password text field constraints
            password.heightAnchor.constraint(equalTo: loginForm.heightAnchor, multiplier: 0.15),
            password.topAnchor.constraint(equalTo: username.bottomAnchor, constant: 16),
            password.leadingAnchor.constraint(equalTo: loginForm.leadingAnchor, constant: 20),
            password.trailingAnchor.constraint(equalTo: loginForm.trailingAnchor, constant: -20),
            
            // Remember me switch constraints
            isOptedToSaveSwitch.topAnchor.constraint(equalTo: password.bottomAnchor, constant: 10),
            isOptedToSaveSwitch.trailingAnchor.constraint(equalTo: loginForm.trailingAnchor, constant: -20),
            
            // Remember me label constraints
            rememberMeLabel.heightAnchor.constraint(equalTo: loginForm.heightAnchor, multiplier: 0.10),
            rememberMeLabel.topAnchor.constraint(equalTo: password.bottomAnchor, constant: 10),
            rememberMeLabel.leadingAnchor.constraint(equalTo: loginForm.leadingAnchor, constant: 20),
            
            // Login button constraints
            loginBtn.heightAnchor.constraint(equalTo: loginForm.heightAnchor, multiplier: 0.15),
            loginBtn.bottomAnchor.constraint(equalTo: loginForm.bottomAnchor, constant: -20),
            loginBtn.leadingAnchor.constraint(equalTo: loginForm.leadingAnchor, constant: 20),
            loginBtn.trailingAnchor.constraint(equalTo: loginForm.trailingAnchor, constant: -20),
            
            //Logo constraints
            logo.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            logo.heightAnchor.constraint(equalTo: logo.widthAnchor),
            logo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logo.bottomAnchor.constraint(equalTo: view.centerYAnchor, constant: 20)
        ])
    }
}
