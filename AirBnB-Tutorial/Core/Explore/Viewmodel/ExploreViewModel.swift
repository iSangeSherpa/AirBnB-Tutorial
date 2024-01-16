//
//  ExploreViewModel.swift
//  AirBnB-Tutorial
//
//  Created by Web and App on 16/01/2024.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var listings = [Listing]()
    var service: ExploreService
    
    init(service: ExploreService) {
        self.service = service
        
        Task { await fetchListings() }
    }
    
    func fetchListings() async {
        do {
            self.listings = try await service.fetchListings()
        } catch {
            print("error - \(error.localizedDescription)")
        }
    }
}
