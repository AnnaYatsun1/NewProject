//
//  ArtistsModel.swift
//  TestTechnology
//
//  Created by Анна Яцун on 24.07.2020.
//  Copyright © 2020 Анна Яцун. All rights reserved.
//

import Foundation

// MARK: - TopArtists
struct TopArtists: Codable {
    
    var topartists: PopularArtists?
}

// MARK: - PopularArtists
struct PopularArtists: Codable {
    
    var artist: [Artist]?
    var attr: Attr?

    enum CodingKeys: String, CodingKey {
        case artist
        case attr = "@attr"
    }
}

// MARK: - Artist
struct Artist: Codable, TableCellModelType {
    
    var name: String?
    var listeners: String?
    var mbid: String?
    var url: String?
    var streamable: String?
    var image: [Image]?
}

// MARK: - Image
struct Image: Codable {
    
    var text: String?
    var size: Size?

    enum CodingKeys: String, CodingKey {
        case text = "#text"
        case size
    }
}

enum Size: String, Codable {
    
    case extralarge = "extralarge"
    case large = "large"
    case medium = "medium"
    case mega = "mega"
    case small = "small"
}

// MARK: - Attr
struct Attr: Codable {
    
    var country, page, perPage, totalPages: String?
    var total: String?
}
