//
//  JsonReader.swift
//  ViperDemo
//
//  Created by Ajay Kunte on 15/01/23.
//

import Foundation

class JsonReader {
    func fetchJsonDataFrom<T: Decodable>(file: String) -> T {
        if let url = Bundle.main.url(forResource: file, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(T.self, from: data)

                return jsonData
            } catch {
                print("error:\(error)")
            }
        }
        return "" as! T
    }
}
