//
//  ExploreService.swift
//  AirBnB-Tutorial
//
//  Created by Web and App on 16/01/2024.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
