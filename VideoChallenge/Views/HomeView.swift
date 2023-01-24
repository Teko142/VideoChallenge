//
//  ContentView.swift
//  VideoChallenge
//
//  Created by Артур Олехно on 24/01/2023.
//

import SwiftUI
import AVKit

struct HomeView: View {
    
    @EnvironmentObject var model: ContentModel
//    var film: Film
    var body: some View {
        
        let url = URL(string: Constants.videoHostUrl)
        
        
//        ScrollView {
            
            VStack {
                
                if url != nil {
                    VideoPlayer(player: AVPlayer(url: url!))
                        .frame(width: 1080, height: 1920)
                    
                }
//                Text(film.name)
//                    .font(.title)
//                Text(film.description)
                    
            }
//        }
    }
}

