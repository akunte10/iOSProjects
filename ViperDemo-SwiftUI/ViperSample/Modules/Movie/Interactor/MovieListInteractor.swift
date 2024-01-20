//
//  MovieListInteractor.swift
//  ViperDemo
//
//  Created by Ajay Kunte on 15/01/23.
//

import Foundation
import SwiftUI

protocol MovieListInteractorProtocol {
    func fetchMovies() -> [Movie]
}

class MovieListInteractor: MovieListInteractorProtocol {
    func fetchMovies() -> [Movie] {
        if let url = Bundle.main.url(forResource: "Movies", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                return try decoder.decode([Movie].self, from: data)
            } catch {
                print("error:\(error)")
            }
        }
        return []
    }
}
