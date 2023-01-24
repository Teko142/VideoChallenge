//
//  ContentModel.swift
//  VideoChallenge
//
//  Created by Артур Олехно on 24/01/2023.
//

import Foundation

class ContentModel: ObservableObject {
    
    @Published var films = [Film]()
    
    @Published var currentVideo: Film?
    
    init(){
        getLocalData()
    }
    
    func getLocalData() {
        
        let jsonUrl = Bundle.main.url(forResource: "data", withExtension: "json")
        
        do {
            
            let jsonData = try Data(contentsOf: jsonUrl!)
            
            let jsonDecoder = JSONDecoder()
            let films = try jsonDecoder.decode([Film].self, from: jsonData)
            
            self.films = films
            
        } catch {
            
            print("Couldn't parse local data")
            
        }
    }
}
