//
//  DummyViewController.swift
//  Bankey
//
//  Created by Justin Allen on 8/11/22.
//

import UIKit

class DummyViewController: UIViewController {
    
    let stackView = UIStackView()
    let label = UILabel()
    let logOutButton = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
}

extension DummyViewController {
    func style() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Welcome"
        label.font = UIFont.preferredFont(forTextStyle: .title1)
        
        logOutButton.translatesAutoresizingMaskIntoConstraints = false
        logOutButton.configuration = .filled()
        logOutButton.configuration?.imagePadding = 8 // for indicator spacing
        logOutButton.setTitle("Logout", for: [])
        logOutButton.addTarget(self, action: #selector(logOutTapped), for: .primaryActionTriggered)
        
    }
    
    func layout() {
        stackView.addArrangedSubview(label)
        
        view.addSubview(stackView)
        view.addSubview(logOutButton)
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
        
        // LogOutButton
        NSLayoutConstraint.activate([
            logOutButton.topAnchor.constraint(equalToSystemSpacingBelow: stackView.bottomAnchor, multiplier: 2),
            logOutButton.leadingAnchor.constraint(equalTo: stackView.leadingAnchor),
            logOutButton.trailingAnchor.constraint(equalTo: stackView.trailingAnchor),
        ])
    }
}

extension DummyViewController {
    @objc func logOutTapped(sender: UIButton) {
        
        logout()
    }
    
    private func logout() {
        print("Logged Out")
    }
}
