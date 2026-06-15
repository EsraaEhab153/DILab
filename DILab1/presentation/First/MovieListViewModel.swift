//
//  MovieListViewModel.swift
//  DILab1
//
//  Created by Esraa Ehab on 15/06/2026.
//

import Foundation
class MovieListViewModel {
    private let fetchMoviesUseCase: FetchMoviesUseCaseProtocol
    
    private(set) var movies: [Movie] = []
    
    init(fetchMoviesUseCase: FetchMoviesUseCaseProtocol) {
        self.fetchMoviesUseCase = fetchMoviesUseCase
    }
    
    func loadMovies() {
        self.movies = fetchMoviesUseCase.execute()
    }
}
