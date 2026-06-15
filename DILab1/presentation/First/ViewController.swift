//
//  ViewController.swift
//  DILab1
//
//  Created by Esraa Ehab on 15/06/2026.
//

import UIKit

class ViewController: UIViewController {

    private let viewModel: MovieListViewModel
    private let factory: ViewControllerFactory
    
    init?(coder: NSCoder, viewModel: MovieListViewModel, factory: ViewControllerFactory) {
            self.viewModel = viewModel
            self.factory = factory
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
    
    func openMovieDetails(movieName: String) {
            let detailsVC = factory.makeMovieDetailsViewController(movieName: movieName)
            self.navigationController?.pushViewController(detailsVC, animated: true)
        }
    
    @IBAction func GoToNextScreen(_ sender: Any) {
        openMovieDetails(movieName: "movie 1")
    }
}
