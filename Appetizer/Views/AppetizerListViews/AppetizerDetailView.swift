//
//  AppetizerDetailView.swift
//  Appetizer
//
//  Created by Kaustubh kailas gade on 29/07/25.
//

import SwiftUI

struct AppetizerDetailView: View {
    var appetizer: Appetizer
    @Binding var isshowDetailModal: Bool
    var body: some View {
        ZStack {
            VStack {
                Image(appetizer.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: .infinity)
                    .frame(height: 300)
                    .edgesIgnoringSafeArea(.all)
                    .padding(.top, -20)
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                    .padding()
                Text(appetizer.description)
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
                    .font(.system(size: 18))
                    .multilineTextAlignment(.center)
                HStack(spacing: 35) {
                    VStack() {
                        Text("Calories")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                        Text("\(appetizer.calories)")
                            .foregroundColor(.secondary)
                    }
                    VStack() {
                        Text("Carbs")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                        Text("\(appetizer.carbs)")
                            .foregroundColor(.secondary)
                    }
                    VStack() {
                        Text("Protein")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                        Text("\(appetizer.protein)")
                            .foregroundColor(.secondary)
                    }
                }
                .padding(.top, 40)
                Button {
                    
                } label: {
                    Text("\(appetizer.price, specifier: "%.2f") - Add to Cart")
                        .fontWeight(.medium)
                        .padding()
                        .foregroundColor(.white)
                        .frame(width: 250, height: 50)
                        .background(Color("BrandPrimary"))
                        .cornerRadius(10)
                }
                .padding(.top, 50)
            }
            .frame(width: 320, height: 650)
            .background(Color(.systemBackground))
            .cornerRadius(12)
            .shadow(radius: 40)
            .overlay(Button {
                isshowDetailModal = false
            } label: {
                ZStack{
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white)
                        .opacity(0.6)
                    
                    Image(systemName: "xmark")
                        .imageScale(.small)
                        .frame(width: 40, height: 40)
                        .foregroundColor(.black)
                }
            },
                     
                     alignment: .topTrailing)
        }
    }
}

