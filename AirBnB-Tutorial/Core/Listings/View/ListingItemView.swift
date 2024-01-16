//
//  ListingView.swift
//  AirBnB-Tutorial
//
//  Created by Web and App on 11/01/2024.
//

import SwiftUI

struct ListingItemView: View {
    var listing: Listing
    
    var body: some View {
        VStack(spacing: 8) {
            // image
            ListingImageCarouselComponent(listing: listing)
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            // listing details
            HStack(alignment: .top) {
                // details
                VStack(alignment: .leading, spacing: 2) {
                    Text(listing.address)
                        .fontWeight(.semibold)
                    Text("12km away")
                        .foregroundStyle(.gray)
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing: 2) {
                        Text("Rs.\(listing.pricePerNight)")
                            .font(.caption)
                            .fontWeight(.medium)
                        Text("night")
                            .font(.caption)
                    }
                }
                
                Spacer()
                
                RatingViewComponent(rating: "\(listing.rating)")
            }
            .font(.footnote)
        }
    }
}

#Preview {
    ListingItemView(listing: DeveloperPreview.shared.listings[0])
}
