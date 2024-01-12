//
//  ExploreView.swift
//  AirBnB-Tutorial
//
//  Created by Web and App on 11/01/2024.
//

import SwiftUI

struct ExploreView: View {
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
                    ListingDetailView()
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
