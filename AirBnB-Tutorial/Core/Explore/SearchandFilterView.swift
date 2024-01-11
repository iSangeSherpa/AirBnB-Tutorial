//
//  SearchandFilterView.swift
//  AirBnB-Tutorial
//
//  Created by Web and App on 11/01/2024.
//

import SwiftUI

struct SearchandFilterView: View {
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            
            VStack(alignment: .leading, spacing: 2) {
                Text("Where to?")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Text("Where to?")
                    .font(.caption2)
                    .foregroundStyle(.gray)
            }
            
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
            })
            .foregroundStyle(.black)
        }
        .padding(.vertical, 10)
        .padding(.horizontal)
        .overlay {
            Capsule()
                .stroke(lineWidth: 0.5)
                .foregroundStyle(.gray)
                .shadow(color: .black.opacity(0.4 ), radius: 2)
        }
    }
}

#Preview {
    SearchandFilterView()
}
