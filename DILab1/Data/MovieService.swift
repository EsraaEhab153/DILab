//
//  MovieService.swift
//  DILab1
//
//  Created by Esraa Ehab on 15/06/2026.
//

import Foundation


protocol MovieServiceProtocol {
    func fetchMovies() -> [Movie]
}

class MockMovieService: MovieServiceProtocol {
    func fetchMovies() -> [Movie] {
        return [
            Movie(title: "Movie 1"),
            Movie(title: "Movie 2"),
            Movie(title: "Movie 3"),
            Movie(title: "Movie 4"),
            Movie(title: "Movie 5"),
            Movie(title: "Movie 6")
        ]
    }
}
