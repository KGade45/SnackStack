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
        ZStack {
            NavigationView {
                List(viewModel.appetizers) { dish in
                    AppetizerItem(appetizer: dish)
                }
                .navigationTitle("🍟 Appetizers")
            }
            .onAppear {
                viewModel.fetchAppetizers()
            }
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alert) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: .default(Text("OK")))
        }
    }
}

#Preview {
    AppetizerListView()
}
