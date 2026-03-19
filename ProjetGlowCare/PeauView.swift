//
//  PeauView.swift
//  ProjetGlowCare
//
//  Created by Apprenant78 on 16/03/2026.
//

import SwiftUI

struct PeauView: View {
            
            enum SkinType: String, CaseIterable {
                case seche = "Peau sèche"
                case grasse = "Peau grasse"
                case mixte = "Peau mixte"
            }
            
            @State private var selectedSkin: SkinType = .seche
            
            var body: some View {
                
                ScrollView {
                    
                    VStack(alignment: .leading, spacing: 20) {
                        
                        Text("Vidéos actualités")
                            .font(.title2)
                            .fontWeight(.bold)
                            
                        
                        
                       
                        HStack(spacing: 10) {
                            
                            ForEach(SkinType.allCases, id: \.self) { skin in
                                
                                Button {
                                    selectedSkin = skin
                                } label: {
                                    
                                    Text(skin.rawValue)
                                        .font(.subheadline)
                                        .padding(.horizontal, 16)
                                        .padding(.vertical, 8)
                                        .background(
                                            selectedSkin == skin ?
                                            Color.blue :
                                            Color.gray.opacity(0.15)
                                        )
                                        .foregroundColor(
                                            selectedSkin == skin ?
                                            .white :
                                            .black
                                        )
                                        .clipShape(Capsule())
                                }
                            }
                        }
                        
                       
                        LazyVGrid(
                            columns: [
                                GridItem(.flexible()),
                                GridItem(.flexible())
                            ],
                            spacing: 16
                        ) {
                            
                           // ForEach(filteredVideos) { video in
                             //   VideoCard(video: video)
                            }
                        }
                    }
                    .padding()
                }
            }
            
        //    var filteredVideos: [Video] {
            //    videos.filter { $0.skinType == selectedSkin }
        //    }
        //}

      //  struct Video: Identifiable {
            
         //   let id = UUID()
        //    let title: String
        //    let image: String
        //    let skinType: VideosView.SkinType
       // }

       // let videos: [Video] = [
            
          //  Video(title: "Routine peau sèche", image: "routinepeauseche", skinType: .seche),
           // Video(title: "Hydratation intense", image: "skin2", skinType: .seche),
            
          //  Video(title: "Contrôler le sébum", image: "skin3", skinType: .grasse),
          //  Video(title: "Routine peau grasse", image: "peaugrasse", skinType: .grasse),
            
          //  Video(title: "Routine peau mixte", image: "skin5", skinType: .mixte)
        //]

      //  struct VideoCard: View {
            
        //    let video: Video
            
        //    var body: some View {
                
           //     ZStack {
                    
               //     Image(video.image)
                  //      .resizable()
                   //     .scaledToFill()
                     //   .frame(height: 110)
                     //   .clipped()
                      //  .cornerRadius(12)
                    
                   // Image(systemName: "play.circle.fill")
                     //   .font(.system(size: 30))
                      //  .foregroundColor(.white)
                //}
           // }
       // }

#Preview {
    PeauView()
}
