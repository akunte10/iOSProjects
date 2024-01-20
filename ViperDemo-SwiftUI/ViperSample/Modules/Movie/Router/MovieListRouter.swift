//
//  MovieListRouter.swift
//  ViperDemo
//
//  Created by Ajay Kunte on 15/01/23.
//

import Foundation
import SwiftUI

protocol MovieListRouterProtocol {
    func detailPageForMovie(_ movie: Movie) -> MovieDetailView
}

class MovieListRouter: MovieListRouterProtocol {
    func detailPageForMovie(_ movie: Movie) -> MovieDetailView {
        return MovieDetailView()
    }
}
