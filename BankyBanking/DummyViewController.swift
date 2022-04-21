//
//  DummyViewController.swift
//  BankyBanking
//
//  Created by Dean Thompson on 2022/04/21.
//

import Foundation
import UIKit

class DummyViewController: UIViewController {
    
    let label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemCyan
        
        style()
        layout()
    }
}

extension DummyViewController {
    private func style() {
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "DUMMY VIEW"
    }
    
    private func layout() {
        
        view.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            
        ])
    }
}
