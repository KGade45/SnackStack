//
//  AppetizerItem.swift
//  Appetizer
//
//  Created by Kaustubh kailas gade on 29/07/25.
//

import SwiftUI

struct AppetizerItem: View {
    var appetizer: Appetizer
    var body: some View {
        HStack {
            Image(appetizer.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 120, height: 90)
                .cornerRadius(15)
            VStack(alignment: .leading, spacing: 10) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                Text("\(appetizer.price)")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}

