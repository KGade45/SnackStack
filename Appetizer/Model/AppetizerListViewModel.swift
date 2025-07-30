//
//  AppetizerListViewModel.swift
//  Appetizer
//
//  Created by Kaustubh kailas gade on 29/07/25.
//

import SwiftUI

class AppetizerListViewModel: ObservableObject {
    @Published var appetizers: [Appetizer] = []
    @Published var alert: AlertItem? = nil
    @Published var isLoading: Bool = false

    func fetchAppetizers() {
        appetizers = MockData.dishes
    }
}
