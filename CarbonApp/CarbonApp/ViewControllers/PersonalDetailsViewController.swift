//
//  PersonalDetailsViewController.swift
//  CarbonApp
//
//  Created by Decagon on 4/12/22.
//

import UIKit

class PersonalDetailsViewController: UIViewController {
    

    
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
    
    private lazy var createAccountButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Next", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 10
        button.backgroundColor = #colorLiteral(red: 0.261880368, green: 0.0002768601116, blue: 0.7620429397, alpha: 1)
        return button
    }()
    
    
     
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationItem.title = "Personal details"
        
        

        let edit = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(editTapped))
        let back = UIBarButtonItem(title: "<", style: .plain, target: self, action: #selector(backTapped))

               navigationItem.rightBarButtonItems = [edit]
        navigationItem.leftBarButtonItems = [back]
        


        

        setupViews()
    }
    private func setupViews() {
        view.addSubview(firstNameLabel)
        view.addSubview(middleNameLabel)
        view.addSubview(surnameLabel)
        view.addSubview(firstNameTextField)
        view.addSubview(middleNameTextField)
        view.addSubview(surnameTextField)
        view.addSubview(genderLabel)
        view.addSubview(genderTextField)
        view.addSubview(phoneNumberLabel)
        view.addSubview(phoneNumberTextField)
        view.addSubview(createAccountButton)
        view.addSubview(emailLabel)
        view.addSubview(emailTextField)
        
        
        NSLayoutConstraint.activate([
            
            
            
            //MARK: - FirstName label
            firstNameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            firstNameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            firstNameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            //MARK: - middleName label
            middleNameLabel.topAnchor.constraint(equalTo: firstNameTextField.bottomAnchor, constant: 20),
            middleNameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
//            //MARK: - SurName label
            surnameLabel.topAnchor.constraint(equalTo: middleNameTextField.topAnchor, constant: 70),
            surnameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            //MARK: - firstname textfield
            firstNameTextField.topAnchor.constraint(equalTo: firstNameLabel.bottomAnchor, constant: 5),
            firstNameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            firstNameTextField.heightAnchor.constraint(equalToConstant: 50),
            
            
            //MARK: - middlename textfield
            middleNameTextField.topAnchor.constraint(equalTo: middleNameLabel.bottomAnchor, constant: 5),
            middleNameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            middleNameTextField.heightAnchor.constraint(equalToConstant: 50),
            middleNameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            //MARK: - surname textfield
            surnameTextField.topAnchor.constraint(equalTo: surnameLabel.bottomAnchor, constant: 5),
            surnameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            surnameTextField.heightAnchor.constraint(equalToConstant: 50),
            surnameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            //MARK: - Gender label
            genderLabel.topAnchor.constraint(equalTo: surnameTextField.topAnchor, constant: 70),
            genderLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            //MARK: - Gender textfield
            genderTextField.topAnchor.constraint(equalTo: genderLabel.bottomAnchor, constant: 5),
            genderTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            genderTextField.heightAnchor.constraint(equalToConstant: 50),
            genderTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            //MARK: - Phone number label
            phoneNumberLabel.topAnchor.constraint(equalTo: genderTextField.topAnchor, constant: 70),
            phoneNumberLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            //MARK: - Phone number textfield
            phoneNumberTextField.topAnchor.constraint(equalTo: phoneNumberLabel.bottomAnchor, constant: 5),
            phoneNumberTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            phoneNumberTextField.heightAnchor.constraint(equalToConstant: 50),
            phoneNumberTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            
            //MARK: - Create account button
            createAccountButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16),
            createAccountButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            createAccountButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            createAccountButton.heightAnchor.constraint(equalToConstant: 50),
            
            //MARK: - Email label
            emailLabel.topAnchor.constraint(equalTo: phoneNumberTextField.topAnchor, constant: 70),
            emailLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            //MARK: - Email textfield
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 5),
            emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            emailTextField.heightAnchor.constraint(equalToConstant: 50),
            emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            
        
        ])
       
    }
    
    @objc func editTapped() {
           print("editTapped.")
       }

    @objc func backTapped() {
           print("addTapped.")
       }
   

}

