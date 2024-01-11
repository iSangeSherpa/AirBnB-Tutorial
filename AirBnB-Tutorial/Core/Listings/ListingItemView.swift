//
//  ListingView.swift
//  AirBnB-Tutorial
//
//  Created by Web and App on 11/01/2024.
//

import SwiftUI

struct ListingItemView: View {
    var listing_images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4"
    ]
    
    var body: some View {
        VStack(spacing: 8) {
            // image
            TabView {
                ForEach(listing_images, id: \.self) { image in
//                    RoundedRectangle(cornerRadius: 5)
                    Image(image)
                        .resizable()
                        .scaledToFill()
                }
            }
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .frame(height: 320)
            .tabViewStyle(.page)
            
            // listing details
            HStack(alignment: .top) {
                // details
                VStack(alignment: .leading) {
                    Text("Kapan, Kathmandu")
                        .fontWeight(.semibold)
                    Text("12km away")
                        .foregroundStyle(.gray)
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing: 2) {
                        Text("Rs.1500")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                }
                
                Spacer()
                
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    Text("4.68")
                }
            }
            .font(.footnote)
        }
    }
}

#Preview {
    ListingItemView()
}
