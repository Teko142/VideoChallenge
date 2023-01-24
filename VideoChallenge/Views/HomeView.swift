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
    let videoRatio: CGFloat = 1080 / 1920
    
    //    var film: Film
    var body: some View {
        
        let url = URL(string: Constants.videoHostUrl)
        
        GeometryReader { geo in
            
            VStack (alignment: .leading){
                
                if url != nil {
                    VideoPlayer(player: AVPlayer(url: url!))
                        .frame(height: geo.size.width * videoRatio)
                }
                
                ScrollView {
                    LazyVStack(alignment: .leading, spacing: 20) {
                        Text ("Description")
                            .bold()
                            .font(.title)
                        Text(descriptionText)
                            .multilineTextAlignment(.leading)
                    }
                }
                .padding()
            }
        }
    }
}

