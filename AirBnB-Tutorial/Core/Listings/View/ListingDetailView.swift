//
//  ListingDetailView.swift
//  AirBnB-Tutorial
//
//  Created by Web and App on 12/01/2024.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {
    var listing: Listing
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ScrollView {
            ZStack(alignment: .topLeading) {
                ListingImageCarouselComponent(listing: listing)
                    .frame(height: 320)
                
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background(
                            Circle()
                                .fill(.white)
                                .frame(width: 42, height: 42)
                        )
                        .padding(.top, 35)
                        .padding(30)
                }
            }
            
            VStack(alignment: .leading, spacing: 8) {
                Text(listing.address)
                    .font(.title)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading) {
                    HStack {
                        RatingViewComponent(rating: "\(listing.rating)")
                        
                        Text("28 reviews")
                            .underline()
                            .fontWeight(.semibold)
                    }
                    
                    Text(listing.address)
                }
                .font(.caption)
            }
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
            // host info view
            HStack {
                VStack(alignment: .leading) {
                    Text("Entire Villa hosted by \(listing.ownerName)")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .frame(width: 250, alignment: .leading)
                    
                    HStack {
                        Text("\(listing.numberOfGuests) guests -")
                        Text("\(listing.numberOfBedrooms) bedrooms -")
                        Text("\(listing.numberOfBeds) beds -")
                        Text("\(listing.numberOfBathrooms) baths")
                    }
                    .font(.caption)
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                
                Spacer()
                
                Image(listing.ownerImageUrl)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
            }
            .padding()
            
            Divider()
            
            VStack(alignment: .leading, spacing: 16){
                ForEach(listing.features) { feature in
                    HStack(spacing: 12) {
                        Image(systemName: "medal")
                        
                        VStack(alignment: .leading, spacing: 4) {
                            Text(feature.title)
                                .fontWeight(.semibold)
                                .font(.footnote)
                            
                            Text(feature.desription)
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        
                        Spacer()
                    }
                }
            }
            .padding()
            
            Divider()
            
            // where you'll sleep
            VStack(alignment: .leading, spacing: 16) {
                Text("Where you'll sleep")
                    .font(.headline)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16) {
                        ForEach(1..<5) { bedrooom in
                            VStack(alignment: .leading) {
                                Image(systemName: "bed.double")
                                Text("Bedroom \(bedrooom)")
                                    .font(.caption)
                            }
                            .frame(width: 132, height: 100)
                            .overlay {
                                RoundedRectangle(cornerRadius: 16)
                                    .stroke(.black, lineWidth: 0.5)
                                    .foregroundStyle(.clear)
                            }
                        }
                    }
                }
                .scrollTargetBehavior(.paging)
            }
            .padding()
            
            Divider()
            
            // listing features
            VStack(alignment: .leading, spacing: 16) {
                Text("What this place offers")
                    .font(.headline)
                    .fontWeight(.semibold)
                
                ForEach(listing.amenities) { amenity in
                    HStack(spacing: 8) {
                        Image(systemName: "wifi")
                        Text(amenity.description)
                            .font(.footnote)
                        
                        Spacer()
                    }
                }
            }
            .padding()
            
            Divider()
            
            // Map View
            VStack(alignment: .leading, spacing: 16) {
                Text("Where you'll be")
                    .font(.headline)
                
                Map()
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .padding()
        }
        .ignoresSafeArea()
        .padding(.bottom, 80)
        .overlay(alignment: .bottom) {
            HStack(alignment: .center) {
                VStack(alignment: .leading) {
                    Divider()
                        .padding(.bottom)
                    
                    Text("Rs. \(listing.pricePerNight)")
                        .font(.subheadline)
                        .fontWeight(.bold)
                    
                    Text("Total before taxes")
                        .font(.footnote)
                    
                    Text("Oct 12-15")
                        .underline()
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                
                Button {
                    
                } label: {
                    Text("Reserve")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .frame(width: 140, height: 40)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
            }
            .padding(.horizontal, 32)
            .background(.white)
            .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    ListingDetailView(listing: DeveloperPreview.shared.listings[0])
}
