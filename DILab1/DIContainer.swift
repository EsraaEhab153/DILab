//
//  DIContainer.swift
//  DILab1
//
//  Created by Esraa Ehab on 15/06/2026.
//

import Foundation
import UIKit
class DIContainer {
    static let shared = DIContainer()
    
     init() {}
    
    private func resolveMovieService() -> MovieServiceProtocol {
        return MockMovieService()
    }
    
    private func resolveFetchMoviesUseCase() -> FetchMoviesUseCaseProtocol {
        return FetchMoviesUseCase(movieService: resolveMovieService())
    }
    
    private func resolveMovieListViewModel() -> MovieListViewModel {
        return MovieListViewModel(fetchMoviesUseCase: resolveFetchMoviesUseCase())
    }
    
    func resolveMovieViewController() -> ViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        guard let viewController = storyboard.instantiateInitialViewController(creator: { coder in
            return ViewController(coder: coder, viewModel: self.resolveMovieListViewModel(), factory: self)
        }) else {
            fatalError("Failed to load ViewController from storyboard.")
        }
        
        return viewController
    }
    
    func resolveMovieDetailsViewController(movieName: String) -> SecondViewController {
        let viewModel = SecondViewModel(movieName: movieName)
        return SecondViewController(viewModel: viewModel)
    }
}

extension DIContainer: ViewControllerFactory {
    func makeMovieDetailsViewController(movieName: String) -> UIViewController {
        return resolveMovieDetailsViewController(movieName: movieName)
    }
}
