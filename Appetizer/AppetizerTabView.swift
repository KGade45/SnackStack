//
//  AppetizerTabView.swift
//  Appetizer
//
//  Created by Kaustubh kailas gade on 24/07/25.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Appetizers")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Profile")
                }
            OrderView()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Orders")
                }
        }
        .accentColor(Color("BrandPrimary"))
    }
}

#Preview {
    AppetizerTabView()
}
