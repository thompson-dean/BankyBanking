//
//  DummyViewController.swift
//  BankyBanking
//
//  Created by Dean Thompson on 2022/04/21.
//

import Foundation
import UIKit

class DummyViewController: UIViewController {
    
    let stackView = UIStackView()
    let label = UILabel()
    let logoutButton = UIButton()
    
    weak var logoutDelegate: LogoutDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        style()
        layout()
    }
}

extension DummyViewController {
    private func style() {
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "DUMMY VIEW"
        label.font = UIFont.preferredFont(forTextStyle: .title1)
        label.textAlignment = .center
        
        logoutButton.translatesAutoresizingMaskIntoConstraints = false
        logoutButton.configuration = .filled()
        logoutButton.setTitle("Log Out", for: [])
        logoutButton.addTarget(self, action: #selector(logoutButtonTapped), for: .primaryActionTriggered)
    }
    
    private func layout() {
        stackView.addArrangedSubview(label)
        stackView.addArrangedSubview(logoutButton)
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 1)
            
        ])
    }
    
    @objc func logoutButtonTapped(sender: UIButton) {
        logoutDelegate?.didLogout()
    }
}
