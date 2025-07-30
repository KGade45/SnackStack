//
//  APIError.swift
//  Appetizer
//
//  Created by Kaustubh kailas gade on 29/07/25.
//

import Foundation

enum APIError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
    case decodingFailed
}
