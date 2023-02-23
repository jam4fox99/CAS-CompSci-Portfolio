//
//  EarthquakeModel.swift
//  IMDBSearch
//
//  Created by Jake Milken on 1/11/23.
//

import Foundation

let lastWeek = "https://collectionapi.metmuseum.org/public/collection/v1/objects/45734"
let allMonth = "https://collectionapi.metmuseum.org/public/collection/v1/objects/45734"

func loadData(){
    let apiURL = URL(string: lastWeek)!
    let request = URLRequest(url: apiURL)
    let task = URLSession.shared.dataTask(with: request) { data, response, error in do{
        if let data = data {

            let dataString = String(data: data, encoding: .utf8)!
            print("----------------------")
            print(dataString)

            let IMDBSearch = try JSONDecoder().decode(IMDBSearch.self, from: data)
            print(IMDBSearch)

        }
    } catch{
        print(error)
    }
}
    task.resume()
}

func loadIMDBSearch(completion:@escaping (IMDBSearch) -> Void){
    let apiURL = URL(string: lastWeek)!
    let request = URLRequest(url: apiURL)
    let task = URLSession.shared.dataTask(with: request) { data, response, error in do{
        if let data = data {

            let dataString = String(data: data, encoding: .utf8)!
            print("----------------------")
            print(dataString)

            let IMDBSearch = try JSONDecoder().decode(IMDBSearch.self, from: data)
            print(IMDBSearch)
            
            completion(IMDBSearch)

        }
    } catch{
        print(error)
    }
}
    task.resume()
}



