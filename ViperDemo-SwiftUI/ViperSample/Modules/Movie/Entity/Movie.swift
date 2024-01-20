//
//  Movie.swift
//  ViperDemo
//
//  Created by Ajay Kunte on 15/01/23.
//

import Foundation

struct Movie: Decodable, Identifiable {
    let id = UUID()
    let title, shortDescription: String
}
