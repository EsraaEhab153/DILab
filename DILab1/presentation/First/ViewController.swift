//
//  ViewController.swift
//  DILab1
//
//  Created by Esraa Ehab on 15/06/2026.
//

import UIKit

class ViewController: UIViewController {

    private let viewModel: MovieListViewModel

        init?(coder: NSCoder, viewModel: MovieListViewModel) {
            self.viewModel = viewModel
            super.init(coder: coder)
        }

        required init?(coder: NSCoder) {
            fatalError("Use init(coder:viewModel:) instead.")
        }

        override func viewDidLoad() {
            super.viewDidLoad()
            
            view.backgroundColor = .white
            viewModel.loadMovies()
            print(" Loaded Movies:")
            viewModel.movies.forEach { print("- \($0.title)") }
        }
    }
