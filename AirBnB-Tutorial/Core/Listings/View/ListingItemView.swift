//
//  ListingView.swift
//  AirBnB-Tutorial
//
//  Created by Web and App on 11/01/2024.
//

import SwiftUI

struct ListingItemView: View {
    
    var body: some View {
        VStack(spacing: 8) {
            // image
            ListingImageCarouselComponent()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            // listing details
            HStack(alignment: .top) {
                // details
                VStack(alignment: .leading) {
                    Text("Kathmandu")
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
                
                RatingViewComponent(rating: "4.68")
            }
            .font(.footnote)
        }
    }
}

#Preview {
    ListingItemView()
}
