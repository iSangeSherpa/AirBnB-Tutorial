//
//  DeveloperPreview.swift
//  AirBnB-Tutorial
//
//  Created by Web and App on 16/01/2024.
//

import Foundation

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    var listings: [Listing] = [
        .init(
            id: UUID().uuidString,
            ownerUid: UUID().uuidString,
            ownerName: "Mark Son",
            ownerImageUrl: "person",
            numberOfBedrooms: 3,
            numberOfBathrooms: 3,
            numberOfGuests: 6,
            numberOfBeds: 3,
            pricePerNight: 2300,
            imageUrls: ["listing-1", "listing-2", "listing-3", "listing-4"],
            latitude: 27.748744354679257,
            longitude: 85.30682366786867,
            address: "Kapan, Simatar",
            city: "Kathmandu",
            state: "Kathmandu",
            title: "Earthkind Cottages",
            rating: 4.44,
            features: [.selfCheckIn, .superhost],
            amenities: [.kitchen, .tv, .wifi],
            type: .townHouse
        ),
        .init(
            id: UUID().uuidString,
            ownerUid: UUID().uuidString,
            ownerName: "Bethany Twain",
            ownerImageUrl: "person",
            numberOfBedrooms: 2,
            numberOfBathrooms: 2,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 1200,
            imageUrls: ["listing-2", "listing-3", "listing-4", "listing-1"],
            latitude: 27.733864576410888,
            longitude: 85.32128273758937,
            address: "Baluwakhani",
            city: "Kathmandu",
            state: "Kathmandu",
            title: "Nomad's Apartment",
            rating: 3.92,
            features: [],
            amenities: [.kitchen, .balcony],
            type: .apartment
        ),
        .init(
            id: UUID().uuidString,
            ownerUid: UUID().uuidString,
            ownerName: "Willis Mason",
            ownerImageUrl: "person",
            numberOfBedrooms: 10,
            numberOfBathrooms: 15,
            numberOfGuests: 20,
            numberOfBeds: 10,
            pricePerNight: 5800,
            imageUrls: ["listing-3", "listing-4", "listing-1", "listing-2"],
            latitude: 27.72295350586128,
            longitude: 85.32859956409747,
            address: "New Baneshwor",
            city: "Kathmandu",
            state: "Kathmandu",
            title: "Royal Empire Boutique Hotel",
            rating: 4.2,
            features: [.selfCheckIn, .superhost],
            amenities: [.kitchen, .tv, .wifi, .balcony, .laundry, .office],
            type: .vila
        ),
        .init(
            id: UUID().uuidString,
            ownerUid: UUID().uuidString,
            ownerName: "Hamaz Abdulla",
            ownerImageUrl: "person",
            numberOfBedrooms: 4,
            numberOfBathrooms: 4,
            numberOfGuests: 4,
            numberOfBeds: 8,
            pricePerNight: 3000,
            imageUrls: ["listing-4", "listing-1", "listing-2", "listing-3"],
            latitude: 27.712447402929694,
            longitude: 85.31141766855947,
            address: "Bansbari",
            city: "Kathmandu",
            state: "Kathmandu",
            title: "Hotel Yala Peak",
            rating: 4.6,
            features: [.selfCheckIn, .superhost],
            amenities: [.kitchen, .tv, .wifi],
            type: .townHouse),
    ]
}
