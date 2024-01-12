//
//  TabbarView.swift
//  AirBnB-Tutorial
//
//  Created by Web and App on 12/01/2024.
//

import SwiftUI

struct TabbarView: View {
    var body: some View {
        TabView {
            ExploreView()
                .tabItem { Label("Explore", systemImage: "safari") }
            
            WishlistView()
                .tabItem { Label("Wishlist", systemImage: "heart.fill") }
            
            ProfileView()
                .tabItem { Label("Profile", systemImage: "person.fill") }
        }
    }
}

#Preview {
    TabbarView()
}
