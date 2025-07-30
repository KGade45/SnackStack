//
//  AppetizerDetailView.swift
//  Appetizer
//
//  Created by Kaustubh kailas gade on 29/07/25.
//

import SwiftUI

struct AppetizerDetailView: View {
    var body: some View {
        ZStack {
            VStack {
                Image("spring-rolls")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: .infinity)
                    .frame(height: 300)
                    .edgesIgnoringSafeArea(.all)
                Text("Spring Rolls")
                    .font(.title2)
                    .fontWeight(.medium)
                    .padding()
                Text("A crispy start to any meal.")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
                    .font(.system(size: 18))
                    .padding()
                HStack(spacing: 35) {
                    VStack() {
                        Text("Calories")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                        Text("$12.99")
                            .foregroundColor(.secondary)
                    }
                    VStack() {
                        Text("Carbs")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                        Text("$12.99")
                            .foregroundColor(.secondary)
                    }
                    VStack() {
                        Text("Protein")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                        Text("$12.99")
                            .foregroundColor(.secondary)
                    }
                }
                .padding(.top, 40)
                Button {
                    
                } label: {
                    Text("Add to Cart")
                        .fontWeight(.medium)
                        .padding()
                        .foregroundColor(.white)
                        .frame(width: 250, height: 50)
                        .background(Color("BrandPrimary"))
                        .cornerRadius(10)
                }
                .padding(.top, 50)
            }
        }
        .frame(maxHeight: .infinity, alignment: .top)
    }
}

#Preview {
    AppetizerDetailView()
}
