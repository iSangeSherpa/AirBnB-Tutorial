//
//  ListingDetailView.swift
//  AirBnB-Tutorial
//
//  Created by Web and App on 12/01/2024.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {
    var listing_images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4"
    ]
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ScrollView {
            ZStack(alignment: .topLeading) {
                ListingImageCarouselComponent()
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
                Text("Kathmandu")
                    .font(.title)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading) {
                    HStack {
                        RatingViewComponent(rating: "4.68")
                        
                        Text("28 reviews")
                            .underline()
                            .fontWeight(.semibold)
                    }
                    
                    Text("Kathmandu")
                }
                .font(.caption)
            }
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
            // host info view
            HStack {
                VStack(alignment: .leading) {
                    Text("Entire Villa hosted by John Smith")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .frame(width: 250, alignment: .leading)
                    
                    HStack {
                        Text("4 guests -")
                        Text("4 guests -")
                        Text("4 beds -")
                        Text("3 baths")
                    }
                    .font(.caption)
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                
                Spacer()
                
                Image("person")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
            }
            .padding()
            
            Divider()
            
            VStack(alignment: .leading, spacing: 16){
                ForEach(0..<2) { feature in
                    HStack(spacing: 12) {
                        Image(systemName: "medal")
                        
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Superhost")
                                .fontWeight(.semibold)
                                .font(.footnote)
                            
                            Text("Feature description")
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
                
                ForEach(0..<5) { feature in
                    HStack(spacing: 8) {
                        Image(systemName: "wifi")
                        Text("Wifi")
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
                    
                    Text("Rs. 500")
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
    ListingDetailView()
}
