//
//  ViewController.swift
//  quizOneCSTP2305
//
//  Created by Ian McConaghy on 2022-02-02.
//

import UIKit

class ViewController: UIViewController {
    
    private let titleLabel = UILabel()
    private let namelabel = UILabel()
    private let nameTextField = UITextField()
    private let nationalityLabel = UILabel()
    private let nationalityTextField = UITextField()
    private let submitButton = UIButton(type: .roundedRect)
    private let addButton = UIButton(type: .custom)

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        didLoadSetup()
    }
}

extension ViewController {
    
    @objc func handleSubmitDidTouchUpInside() {
        print(nameTextField, nationalityTextField)
    }
}

private extension ViewController {
    
    func didLoadSetup() {
        view.addSubviews(views: titleLabel, namelabel, nameTextField, nationalityLabel, nationalityTextField, submitButton, addButton)
        
        setupTitleLabel()
        setupNameLabel()
        setupNationalityLabel()
        setupSubmitButton()
        setupAddButton()
    
    }
    
    func setupTitleLabel() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        titleLabel.text = "Every Government Form Ever"
        titleLabel.numberOfLines = 0
        titleLabel.lineBreakMode = .byWordWrapping
        titleLabel.textAlignment = .center
        
        NSLayoutConstraint.activate(
            [
                titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
                titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 10),
                titleLabel.topAnchor.constraint(equalTo:view.safeAreaLayoutGuide.topAnchor, constant: 20)
            ]
        )
    }
    
    func setupNameLabel() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        titleLabel.text = "Name"
        titleLabel.numberOfLines = 0
        titleLabel.lineBreakMode = .byWordWrapping
        titleLabel.textAlignment = .center
        
        NSLayoutConstraint.activate(
            [
                titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
                titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
                titleLabel.topAnchor.constraint(equalTo:view.safeAreaLayoutGuide.topAnchor, constant: 20)
            ]
        )
    }
    
    func setupNationalityLabel() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        titleLabel.text = "Nationality"
        titleLabel.numberOfLines = 0
        titleLabel.lineBreakMode = .byWordWrapping
        titleLabel.textAlignment = .center
        
        NSLayoutConstraint.activate(
            [
                titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
                titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
                titleLabel.topAnchor.constraint(equalTo:view.safeAreaLayoutGuide.topAnchor, constant: 20)
            ]
        )
    }
    
    func setupSubmitButton() {
            submitButton.translatesAutoresizingMaskIntoConstraints = false
            submitButton.setTitle("Submit", for: .normal)
            
            submitButton.addTarget(self, action: #selector(handleSubmitDidTouchUpInside), for: .touchUpInside)
            submitButton.backgroundColor = .gray
            submitButton.setTitleColor(.systemBlue, for: .normal)
            submitButton.layer.cornerRadius = 8
            
            NSLayoutConstraint.activate(
                [
                    submitButton.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
                    submitButton.safeAreaLayoutGuide.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
                    submitButton.safeAreaLayoutGuide.widthAnchor.constraint(equalTo: submitButton.safeAreaLayoutGuide.heightAnchor, multiplier: 3),
                    submitButton.safeAreaLayoutGuide.heightAnchor.constraint(equalToConstant: 40)
                ]
            )
        }
    
    func setupAddButton() {
            submitButton.translatesAutoresizingMaskIntoConstraints = false
            submitButton.setTitle("+", for: .normal)
            
            submitButton.addTarget(self, action: #selector(handleSubmitDidTouchUpInside), for: .touchUpInside)
            submitButton.backgroundColor = .gray
            submitButton.setTitleColor(.systemBlue, for: .normal)
            submitButton.layer.cornerRadius = 8
            
            NSLayoutConstraint.activate(
                [
                    submitButton.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
                    submitButton.safeAreaLayoutGuide.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
                    submitButton.safeAreaLayoutGuide.widthAnchor.constraint(equalTo: submitButton.safeAreaLayoutGuide.heightAnchor, multiplier: 3),
                    submitButton.safeAreaLayoutGuide.heightAnchor.constraint(equalToConstant: 40)
                ]
            )
        }
    }

// UIView helpers
extension UIView {
    func addSubviews(views: UIView...) {
        for view in views {
            self.addSubview(view)
        }
    }
}
