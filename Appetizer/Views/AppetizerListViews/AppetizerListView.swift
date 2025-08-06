//
//  AppetizerListView.swift
//  Appetizer
//
//  Created by Kaustubh kailas gade on 24/07/25.
//

import SwiftUI

struct AppetizerListView: View {
    @State var isshowDetailModal: Bool = false
    @StateObject var viewModel = AppetizerListViewModel()
    @State var selectedAppetizer: Appetizer?
    var body: some View {
        ZStack {
            NavigationView {
                List {
                    ForEach(viewModel.appetizers) { dish in
                        AppetizerItem(appetizer: dish)
                            .onTapGesture {
                                selectedAppetizer = dish
                                isshowDetailModal = true
                            }
                    }
                    .onMove(perform: move)
                }
                .navigationTitle("🍟 Appetizers")
                .navigationBarItems(trailing: EditButton())
            }
            .onAppear {
                viewModel.fetchAppetizers()
            }
            .blur(radius: isshowDetailModal ? 20 : 0)
            if isshowDetailModal {
                AppetizerDetailView(appetizer: selectedAppetizer ?? MockData.sampleDish, isshowDetailModal: $isshowDetailModal)
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
    func move(from source: IndexSet, to destination: Int) {
        viewModel.appetizers.move(fromOffsets: source, toOffset: destination)
    }
}

#Preview {
    AppetizerListView()
}
