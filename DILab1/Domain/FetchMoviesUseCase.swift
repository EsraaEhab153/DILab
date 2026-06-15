//
//  FetchMoviesUseCase.swift
//  DILab1
//
//  Created by Esraa Ehab on 15/06/2026.
//

import Foundation

protocol FetchMoviesUseCaseProtocol {
    func execute() -> [Movie]
}

class FetchMoviesUseCase: FetchMoviesUseCaseProtocol {
    private let movieService: MovieServiceProtocol
    
    init(movieService: MovieServiceProtocol) {
        self.movieService = movieService
    }
    
    func execute() -> [Movie] {
        return movieService.fetchMovies()
    }
}
