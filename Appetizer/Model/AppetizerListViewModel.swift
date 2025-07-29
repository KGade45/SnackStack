//
//  AppetizerListViewModel.swift
//  Appetizer
//
//  Created by Kaustubh kailas gade on 29/07/25.
//

import SwiftUI

class AppetizerListViewModel: ObservableObject {
    @Published var appetizers: [Appetizer] = []
    
    func fetchAppetizers() {
        appetizers = MockData.dishes
    }
}
