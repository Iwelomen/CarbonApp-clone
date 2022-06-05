//
//  SignupViewController.swift
//  CarbonApp
//
//  Created by Decagon on 4/12/22.
//

import UIKit

class SignupViewController: UIViewController {
    
    private let scrollView: UIScrollView = {
            let scroll = UIScrollView()
            scroll.translatesAutoresizingMaskIntoConstraints = false
            scroll.isScrollEnabled = true
            scroll.showsVerticalScrollIndicator = true
            return scroll

        }()
    
    private lazy var basicDetailsLabel: UILabel = {
        let label = UILabel()
        label.text = "Let's set things up. Please fill out these basic details to get started."
        label.textColor = .black
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = UIFont(name: "Helvetiva neue", size: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var firstNameLabel: UILabel = {
        let label = UILabel()
        label.text = "First name"
        label.textColor = .black
        label.font = UIFont(name: "Helvetiva neue", size: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var middleNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Middle name"
        label.textColor = .black
        label.font = UIFont(name: "Helvetiva neue", size: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var surnameLabel: UILabel = {
        let label = UILabel()
        label.text = "Surname"
        label.textColor = .black
        label.font = UIFont(name: "Helvetiva neue", size: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var emailLabel: UILabel = {
        let label = UILabel()
        label.text = "Email address"
        label.textColor = .black
        label.font = UIFont(name: "Helvetiva neue", size: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var emailTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .systemGray5
        textField.borderStyle = .roundedRect
        
        return textField
    }()
    
    
    private lazy var passwordLabel: UILabel = {
        let label = UILabel()
        label.text = "Password"
        label.textColor = .black
        label.font = UIFont(name: "Helvetiva neue", size: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .systemGray5
        textField.borderStyle = .roundedRect
        
        return textField
    }()
    
    
    private lazy var firstNameTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .systemGray5
        textField.borderStyle = .roundedRect
        
        return textField
    }()
    
    private lazy var middleNameTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .systemGray5
        textField.borderStyle = .roundedRect
        
        return textField
    }()
    
    private lazy var surnameTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .systemGray5
        textField.borderStyle = .roundedRect
        
        return textField
    }()
    
    private lazy var genderLabel: UILabel = {
        let label = UILabel()
        label.text = "Gender"
        label.textColor = .black
        label.font = UIFont(name: "Helvetiva neue", size: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var genderTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .systemGray5
        textField.borderStyle = .roundedRect
        
        return textField
    }()
    
    private lazy var phoneNumberLabel: UILabel = {
        let label = UILabel()
        label.text = "Phone number"
        label.textColor = .black
        label.font = UIFont(name: "Helvetiva neue", size: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
     
    private lazy var phoneNumberTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .systemGray5
        textField.borderStyle = .roundedRect
        
        return textField
    }()
    
    private lazy var acceptanceLabel: UILabel = {
        let label = UILabel()
        label.text = "By continuing, you accept our Terms of \n Service & Privacy Policy"
        label.numberOfLines = 0
        label.textAlignment = .center
        label.textColor = .black
        label.font = UIFont(name: "Helvetiva neue", size: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var createAccountButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Create account", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 10
        button.backgroundColor = #colorLiteral(red: 0.6392157078, green: 0.6392157078, blue: 0.6392157078, alpha: 1)
        return button
    }()
     
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationItem.title = "Create your Carbon account"
        
        let back = UIBarButtonItem(title: "<", style: .plain, target: self, action: #selector(backTapped))
        navigationItem.leftBarButtonItems = [back]

        setupViews()
    }
    private func setupViews() {
        scrollView.addSubview(basicDetailsLabel)
        scrollView.addSubview(firstNameLabel)
        scrollView.addSubview(middleNameLabel)
        scrollView.addSubview(surnameLabel)
        scrollView.addSubview(firstNameTextField)
        scrollView.addSubview(middleNameTextField)
        scrollView.addSubview(surnameTextField)
        scrollView.addSubview(genderLabel)
        scrollView.addSubview(genderTextField)
        scrollView.addSubview(phoneNumberLabel)
        scrollView.addSubview(phoneNumberTextField)
        scrollView.addSubview(acceptanceLabel)
        scrollView.addSubview(createAccountButton)
        scrollView.addSubview(emailLabel)
        scrollView.addSubview(emailTextField)
        scrollView.addSubview(passwordLabel)
        scrollView.addSubview(passwordTextField)
        view.addSubview(scrollView)
        scrollView.contentSize = CGSize(width: view.frame.width, height: view.frame.height * 2)
        
        
        
        NSLayoutConstraint.activate([
            
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            //MARK: - basic details label
            basicDetailsLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 30),
            basicDetailsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            basicDetailsLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            //MARK: - FirstName
            firstNameLabel.topAnchor.constraint(equalTo: basicDetailsLabel.bottomAnchor, constant: 10),
            firstNameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            //MARK: - middleName
            middleNameLabel.topAnchor.constraint(equalTo: basicDetailsLabel.bottomAnchor, constant: 10),
            middleNameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -88),
            
//            //MARK: - Surname label
            surnameLabel.topAnchor.constraint(equalTo: firstNameTextField.bottomAnchor, constant: 20),
            surnameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            //MARK: - firstname textfield
            firstNameTextField.topAnchor.constraint(equalTo: firstNameLabel.bottomAnchor, constant: 5),
            firstNameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            firstNameTextField.heightAnchor.constraint(equalToConstant: 50),
            firstNameTextField.widthAnchor.constraint(equalToConstant: 170),
            
            //MARK: - middlename testfield
            middleNameTextField.topAnchor.constraint(equalTo: firstNameLabel.bottomAnchor, constant: 5),
            middleNameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            middleNameTextField.heightAnchor.constraint(equalToConstant: 50),
            middleNameTextField.widthAnchor.constraint(equalToConstant: 170),
            
            //MARK: - surname textfield
            surnameTextField.topAnchor.constraint(equalTo: surnameLabel.bottomAnchor, constant: 5),
            surnameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            surnameTextField.heightAnchor.constraint(equalToConstant: 50),
            surnameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            //MARK: - Gender label
            genderLabel.topAnchor.constraint(equalTo: surnameTextField.bottomAnchor, constant: 20),
            genderLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            //MARK: - Gender textfield
            genderTextField.topAnchor.constraint(equalTo: genderLabel.bottomAnchor, constant: 5),
            genderTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            genderTextField.heightAnchor.constraint(equalToConstant: 50),
            genderTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            //MARK: - Phone number label
            phoneNumberLabel.topAnchor.constraint(equalTo: genderTextField.bottomAnchor, constant: 20),
            phoneNumberLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            //MARK: - Phone number textfield
            phoneNumberTextField.topAnchor.constraint(equalTo: phoneNumberLabel.bottomAnchor, constant: 5),
            phoneNumberTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            phoneNumberTextField.heightAnchor.constraint(equalToConstant: 50),
            phoneNumberTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            //MARK: - acceptance label
            acceptanceLabel.bottomAnchor.constraint(equalTo: createAccountButton.topAnchor, constant: -10),
            acceptanceLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            acceptanceLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            //MARK: - Create account button
            createAccountButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16),
            createAccountButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            createAccountButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            createAccountButton.heightAnchor.constraint(equalToConstant: 50),
            
            //MARK: - Email label
            emailLabel.topAnchor.constraint(equalTo: phoneNumberTextField.bottomAnchor, constant: 20),
            emailLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            //MARK: - Email textfield
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 5),
            emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            emailTextField.heightAnchor.constraint(equalToConstant: 50),
            emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            //MARK: - Password label
            passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20),
            passwordLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            //MARK: - Password textfield
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 5),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            passwordTextField.heightAnchor.constraint(equalToConstant: 50),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            
        
        ])
       
    }
    @objc func backTapped() {
        print("backTapped")
    }
    
}
