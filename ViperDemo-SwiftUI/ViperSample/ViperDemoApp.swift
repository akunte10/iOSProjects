//
//  ViperDemoApp.swift
//  ViperDemo
//
//  Created by Ajay Kunte on 15/01/23.
//

import SwiftUI

@main
struct ViperDemoApp: App {
    var body: some Scene {
        WindowGroup {
            let presenter = MovieListPresenter(interactor: MovieListInteractor(), router: MovieListRouter())
            ContentView(presenter: presenter)
        }
    }
}
