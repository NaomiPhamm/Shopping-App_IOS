//
//  NearYouDetailView.swift
//  Shopping App (06110)
//
//  Created by Naomi on 2025-09-30.
//

import SwiftUI

import SwiftUI

struct NearYouDetailView: View {
    let place: Place

    var body: some View {
        VStack(spacing: 20) {
            Image(place.image)
                .resizable()
                .scaledToFit()
                .frame(height: 200)

            Text(place.name)
                .font(.title)
                .fontWeight(.bold)

            Text(place.time)
                .foregroundStyle(.gray)

            Text(place.rating)
        }
        .padding()
        .navigationTitle("Details")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NearYouDetailView(place: dataArray[0])
}
