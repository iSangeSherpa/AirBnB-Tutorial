//
//  ExploreView.swift
//  AirBnB-Tutorial
//
//  Created by Web and App on 11/01/2024.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                SearchandFilterView()
                    .padding(.bottom, 30)
                
                LazyVStack(spacing: 40) {
                    ForEach(0 ... 10, id: \.self) { listing in
                        NavigationLink(value: listing){
                            ListingItemView()
                        }
                        .tint(.black)
                    }
                }
            }
            .padding()
            .navigationDestination(for: Int.self) { listing in
                Text("Listing view")
            }
        }
    }
}

#Preview {
    ExploreView()
}
