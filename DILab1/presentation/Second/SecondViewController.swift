//
//  SecondViewController.swift
//  DILab1
//
//  Created by Esraa Ehab on 15/06/2026.
//

import UIKit

class SecondViewController: UIViewController {
    private let viewModel: SecondViewModel
        
        init(viewModel: SecondViewModel) {
            self.viewModel = viewModel
            
            super.init(nibName: "SecondViewController", bundle: nil)
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }

        override func viewDidLoad() {
            super.viewDidLoad()
            print("Opened Details for: \(viewModel.movieName)")
        }
    }
