//
//  Listing.swift
//  AirBnB-Tutorial
//
//  Created by Web and App on 12/01/2024.
//

import Foundation

struct Listing: Identifiable, Codable, Hashable {
    let id : String
    let ownerUid : String
    let ownerName: String
    let ownerImageUrl: String
    
    let numberOfBedrooms: Int
    let numberOfBathrooms: Int
    let numberOfGuests: Int
    let numberOfBeds: Int
    let pricePerNight: Int
    let imageUrls: [String]
    
    let latitude: Double
    let longitude: Double
    let address: String
    let city: String
    let state: String
    let title: String
    var rating: Double
    
    var features: [ListingFeatures]
    var amenities: [ListingAmenities]
    var type: ListingType
}


enum ListingFeatures: Int, Codable, Identifiable, Hashable {
    case selfCheckIn
    case superhost
    
    var imageName: String {
        switch self {
        case.selfCheckIn: return "door.left.hand.open"
        case.superhost: return "medal"
        }
    }
    
    var title: String {
        switch self {
        case.selfCheckIn: return "Self Check-In"
        case.superhost: return "Superhost"
        }
    }
    
    var desription: String {
        switch self {
        case.selfCheckIn: return "Check yourself in with the keypad"
        case.superhost: return "Superhosts are experienced, highly rated hosts commited to providing great services for guests"
        }
    }
    
    var id: Int { return self.rawValue}
}


enum ListingAmenities: Int, Codable, Identifiable, Hashable {
    case pool
    case kitchen
    case wifi
    case laundry
    case tv
    case balcony
    case office
    
    var description: String {
        switch self {
        case.pool: return "Pool"
        case.kitchen: return "Kitchen"
        case.wifi: return "Wifi"
        case.laundry: return "Laundry"
        case.tv: return "Tv"
        case.balcony: return "Balcony"
        case.office: return "Office"
        }
    }
    
    var id: Int { return self.rawValue}
}


enum ListingType: Int, Codable, Identifiable, Hashable {
    case apartment
    case house
    case townHouse
    case vila
    
    var description: String {
        switch self {
        case.apartment: return "Apartment"
        case.house: return "House"
        case.townHouse: return "Town House"
        case.vila: return "Villa"
        }
    }
    
    var id: Int { return self.rawValue}
}
