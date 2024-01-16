//
//  ExploreView.swift
//  AirBnB-Tutorial
//
//  Created by Web and App on 11/01/2024.
//

import SwiftUI

struct ExploreView: View {
    var viewmodel = ExploreViewModel(service: ExploreService())
    @State var showSearch: Bool = false
    
    var body: some View {
        if showSearch {
            DestinationSearchView(isShowing: $showSearch)
                .toolbar(.hidden, for: .tabBar)
        } else {
            NavigationStack {
                ScrollView {
                    SearchandFilterView()
                        .padding(.bottom, 30)
                        .onTapGesture {
                            withAnimation(.snappy) {
                                showSearch.toggle()
                            }
                        }
                    
                    LazyVStack(spacing: 40) {
                        ForEach(viewmodel.listings) { listing in
                            NavigationLink(value: listing){
                                ListingItemView(listing: listing)
                            }
                            .tint(.black)
                        }
                    }
                }
                .padding()
                .navigationDestination(for: Listing.self) { listing in
                    ListingDetailView(listing: listing)
                        .navigationBarBackButtonHidden()
                        .toolbar(.hidden, for: .tabBar)
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}
