//
//  SignInViewController.swift
//  CarbonApp
//
//  Created by Decagon on 4/12/22.
//

import UIKit

class SignInViewController: UIViewController {
    
    private lazy var loginImageView: UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = .white
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.image = UIImage(named: "Carbon")
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        return iv
        
    }()
    
    private lazy var welcomeMessage: UILabel = {
        let label = UILabel()
        label.text = "Hi there, welcome back. Please sign in."
        label.font = UIFont(name: "Helvetica neue", size: 17)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var emailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Email address"
        label.font = UIFont(name: "Helvetica neue", size: 17)
        label.textColor = .black
        return label
    }()
    
    private lazy var emailTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .systemGray5
        textField.placeholder = "Enter email address"
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    private lazy var passwordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "password"
        label.font = UIFont(name: "Helvetica neue", size: 17)
        label.textColor = .black
        return label
    }()
    
    private lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .systemGray5
        textField.placeholder = "Enter email address"
        textField.borderStyle = .roundedRect
        textField.isSecureTextEntry = true
        return textField
    }()
    
    private lazy var loginButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Login", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 10
        button.backgroundColor = #colorLiteral(red: 0.262745098, green: 0.0002768601116, blue: 0.7620429397, alpha: 1)
        return button
    }()
    

    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupViews()
    }
    
    private func setupViews() {
        view.addSubview(loginImageView)
        view.addSubview(welcomeMessage)
        view.addSubview(emailLabel)
        view.addSubview(emailTextField)
        view.addSubview(passwordLabel)
        view.addSubview(passwordTextField)
        view.addSubview(loginButton)
        
        NSLayoutConstraint.activate([
            
            //MARK: - Login Image
            loginImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
//            loginImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            loginImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 16),
            
            //MARK: - Welcome Label
            welcomeMessage.topAnchor.constraint(equalTo: loginImageView.bottomAnchor, constant: 2),
            welcomeMessage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            //MARK: - Email label
            emailLabel.topAnchor.constraint(equalTo: welcomeMessage.bottomAnchor, constant: 40),
            emailLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            //MARK: - Email textfield
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 5),
            emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            emailTextField.heightAnchor.constraint(equalToConstant: 50),
            
            //MARK: - password label
            passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 15),
            passwordLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            //MARK: - Password textfield
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 5),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            passwordTextField.heightAnchor.constraint(equalToConstant: 50),
            
            //MARK: - Login button
            loginButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            loginButton.heightAnchor.constraint(equalToConstant: 50),
            

        
        ])
        
    }

    

}
