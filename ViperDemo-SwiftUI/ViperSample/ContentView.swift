//
//  ContentView.swift
//  ViperDemo
//
//  Created by Ajay Kunte on 15/01/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var presenter: MovieListPresenter
    
    init(presenter: MovieListPresenter) {
        self.presenter = presenter
        presenter.fetchMovies()
    }
    
    var body: some View {
        NavigationView {
            List(presenter.movies) { movie in
                NavigationLink(destination: presenter.detailPage(for: movie)) {
                    VStack(alignment: .leading ) {
                        Text(movie.title)
                            .fontWeight(.bold)
                        Text(movie.shortDescription)
                    }
                }
            }
            .navigationBarTitle("Movies")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(presenter: MovieListPresenter(interactor: MovieListInteractor(), router: MovieListRouter()))
    }
}
