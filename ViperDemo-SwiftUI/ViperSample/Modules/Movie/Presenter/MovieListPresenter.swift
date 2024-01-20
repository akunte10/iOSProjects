//
//  MovieListPresenter.swift
//  ViperDemo
//
//  Created by Ajay Kunte on 15/01/23.
//

import Foundation
import SwiftUI

class MovieListPresenter: ObservableObject {
    private let interactor: MovieListInteractorProtocol
    private let router: MovieListRouterProtocol
    
    private(set) var movies: [Movie] = []
    
    init(interactor: MovieListInteractorProtocol, router: MovieListRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
    
    func fetchMovies() {
        movies = interactor.fetchMovies()
    }
    
    func detailPage(for movie: Movie) -> some View {
        router.detailPageForMovie(movie)
    }
}
