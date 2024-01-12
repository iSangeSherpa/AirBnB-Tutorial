//
//  RatingViewComponent.swift
//  AirBnB-Tutorial
//
//  Created by Web and App on 12/01/2024.
//

import SwiftUI

struct RatingViewComponent: View {
    var rating: String = ""
    
    var body: some View {
        HStack(spacing: 2) {
            Image(systemName: "star.fill")
            Text(rating)
        }
    }
}

#Preview {
    RatingViewComponent()
}
