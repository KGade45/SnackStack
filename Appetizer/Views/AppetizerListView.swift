//
//  AppetizerListView.swift
//  Appetizer
//
//  Created by Kaustubh kailas gade on 24/07/25.
//

import SwiftUI

struct AppetizerListView: View {
    @StateObject var viewModel = AppetizerListViewModel()
    var body: some View {
        NavigationView {
            List(viewModel.appetizers) { dish in
                AppetizerItem(appetizer: dish)
            }
            .navigationTitle("🍟 Appetizers")
        }
        .onAppear {
            viewModel.fetchAppetizers()
        }
        
    }
}

#Preview {
    AppetizerListView()
}
