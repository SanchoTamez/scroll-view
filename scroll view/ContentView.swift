//
//  ContentView.swift
//  scroll view
//
//  Created by Tamez, Elan - Student on 9/5/25.
//

import SwiftUI

// MARK: - ContentView

struct ContentView: View {
    let topTenSports = [
        (title: "Basketball", subtitle: "Fast-paced and high-scoring", image: "basketball"),
        (title: "Soccer", subtitle: "World's most popular sport", image: "soccer"),
        (title: "Tennis", subtitle: "One-on-one intense action", image: "tennis"),
        (title: "Baseball", subtitle: "America's pastime", image: "baseball"),
        (title: "Football", subtitle: "Strategy and strength", image: "football"),
        (title: "Hockey", subtitle: "Ice, speed, and toughness", image: "hockey"),
        (title: "cycling", subtitle: "Grace and endurance", image: "cycling"),
        (title: "Boxing", subtitle: "Strength and stamina", image: "boxing"),
        (title: "Golf", subtitle: "Precision and patience", image: "golf"),
        (title: "Swimming", subtitle: "Endurance and speed", image: "Swimming")
    ]
    // id like to add a blurred background
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ForEach((0..<topTenSports.count).reversed(), id: \.self) { index in
                    let sport = topTenSports[index]
                    CardView(
                        rank: 10 - index,
                        title: sport.title,
                        subtitle: sport.subtitle,
                        imageName: sport.image
                    )
                }
            }
            .padding(.vertical)
        }
    }
}

// MARK: - CardView

struct CardView: View {
    let rank: Int
    let title: String
    let subtitle: String
    let imageName: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 200)
                .clipped()
                .cornerRadius(10)
            
            Text("#\(rank): \(title)")
                .font(.title)
                .bold()
                .padding(.top, 5)
            
            Text(subtitle)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(15)
        .shadow(radius: 5)
        .padding(.horizontal)
        
        
    }
}

// MARK: - Preview

#Preview {
    ContentView()
}
