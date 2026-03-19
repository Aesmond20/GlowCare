//
//  RoutineView.swift
//  GlowCare
//
//  Created by Apprenant78 on 05/03/2026.
//


import SwiftUI
import Foundation

struct RoutineView: View {
    
    @State private var selectedTime = "5min"
    @State private var timer: Timer? = nil
    @State private var timeRemaining: Int = 0
    @State private var isRunning: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            // TITRE
            Text("MA ROUTINE")
                .font(.title)
                .bold()
            
            Text("Choisissez votre durée de routine idéale")
                .font(.subheadline)
            
            // AFFICHAGE DU TEMPS
            Text(formattedTime())
                .font(.largeTitle)
                .bold()
            
            // BOUTONS
            HStack {
                Button("3 min") {
                    startTimer(minutes: 3)
                }
                .buttonStyleStyle()
                
                Button("5 min") {
                    startTimer(minutes: 5)
                }
                .buttonStyleStyle()
                
                Button("10 min") {
                    startTimer(minutes: 10)
                }
                .buttonStyleStyle()
            }
            
            // ETAPES
            VStack(alignment: .leading, spacing: 8) {
                Text("Etapes d'une routine efficace")
                    .bold()
                
                Text("1. Nettoyer votre peau")
                Text("2. Appliquer votre sérum")
                Text("3. Appliquer votre crème")
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.gray.opacity(0.1))
            .cornerRadius(15)
            
            Spacer()
            
            // BOUTON PLAY / STOP
            Button {
                isRunning.toggle()
                if isRunning {
                    resumeTimer()
                } else {
                    stopTimer()
                }
            } label: {
                Image(systemName: isRunning ? "stop.fill" : "play.fill")
                    .font(.largeTitle)
                    .padding()
            }
            
        }
        .padding()
    }
    
    // MARK: - TIMER
    
    func startTimer(minutes: Int) {
        timer?.invalidate()
        timeRemaining = minutes * 60
        isRunning = true
        
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            if timeRemaining > 0 {
                timeRemaining -= 1
            } else {
                timer?.invalidate()
                isRunning = false
            }
        }
    }
    
    func stopTimer() {
        timer?.invalidate()
        isRunning = false
    }
    
    func resumeTimer() {
        guard timeRemaining > 0 else { return }
        
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            if timeRemaining > 0 {
                timeRemaining -= 1
            } else {
                timer?.invalidate()
                isRunning = false
            }
        }
    }
    
    // FORMAT MIN:SEC
    func formattedTime() -> String {
        let minutes = timeRemaining / 60
        let seconds = timeRemaining % 60
        return String(format: "%02d:%02d", minutes, seconds)
    }
}

// STYLE BOUTON
extension View {
    func buttonStyleStyle() -> some View {
        self
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(15)
            .shadow(radius: 2)
    }
}

#Preview {
    RoutineView()
}
