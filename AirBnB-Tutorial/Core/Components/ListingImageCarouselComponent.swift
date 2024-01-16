//
//  ListingImageCarouselComponent.swift
//  AirBnB-Tutorial
//
//  Created by Web and App on 12/01/2024.
//

import SwiftUI

struct ListingImageCarouselComponent: View {
    var listing: Listing
    
    var body: some View {
        TabView {
            ForEach(listing.imageUrls, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselComponent(listing: DeveloperPreview.shared.listings[3])
}
