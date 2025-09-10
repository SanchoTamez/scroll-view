//
//  SwiftUIView.swift
//  scroll view
//
//  Created by Tamez, Elan - Student on 9/5/25.
//

import SwiftUI

struct SwiftUIView: View {
    
    var image: String
    var headline: String
    var titleColor: Color
    var body: some View {
        
        VStack {
            Image("checkout")
                .aspectRatio(contentMode: .fit)
            HStack {
                VStack(alignment: .leading) {
                    
                        Text("SwiftUI")
                            .foregroundStyle(.secondary)
                        Text("Drawing a Border with Rounded Corners")
                            .font(.title)
                            .fontWeight(.black)
                            .foregroundStyle(titleColor)
                            .lineLimit(3)
                        Text("Written By Elan Tamez".uppercased())
                            .foregroundStyle(.secondary)
                            .font(.caption)
            }
                .padding()
                Spacer()
            }
        }
        .cornerRadius(10)
        .overlay {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray)
               
        }
        .padding([.top, .horizontal])
    }
}


#Preview {
    SwiftUIView(image: "checkout", headline: "Amazing Headline", titleColor: .yellow)
}
