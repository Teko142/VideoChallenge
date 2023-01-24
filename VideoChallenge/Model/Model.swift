//
//  Model.swift
//  VideoChallenge
//
//  Created by Артур Олехно on 24/01/2023.
//

import Foundation

struct Film: Decodable, Identifiable {
    
    var id: Int
    var name: String
    var video: String
    var description: String
    
}
