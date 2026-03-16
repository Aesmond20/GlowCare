//
//  FavoriteVideoView.swift
//  ProjetGlowCare
//
//  Created by Ambre Brisson on 11/03/2026.
//

import SwiftUI

struct FavoriteVideoView: View {
    
    var videos: [Video]
    
    var body: some View {
        
        ScrollView {
            LazyVStack {
                ForEach(videos) { video in
                    Text(video.videoName)
                }
            }
        }
        .navigationTitle("Vidéos favoris")
    }
}


#Preview {
    FavoriteVideoView(videos: [])
}
