//
//  HomeScreenView.swift
//  Shopping App (06110)
//
//  Created by Naomi on 2025-09-30.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Image(systemName: "line.3.horizontal")
                Spacer()
                Image(systemName: "cart.badge.plus")
            }
            .font(.title3)
            
            Text("Hey")
                .font(.title)
                .fontWeight(.bold)
            
            Text("Fin fresh fruits that you want")
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.gray.opacity(0.3))
                .frame(width: 350, height: 50, alignment: .center)
                .overlay {
                    HStack {
                        Image(systemName: "magnifyingglass")
                        Text("Search fresh fruits")
                            .foregroundStyle(.gray)
                            .multilineTextAlignment(.leading)
                        
                        Spacer()
                    }
                }
                .padding()

            // Text
            Text("Top Selling")
                .font(.title)
                .fontWeight(.bold)
            //view horizontal scroll
            TopSellingView()
            Text("Near you")
                .font(.title)
                .fontWeight(.bold)
            // view - vertical scroll
            NearYouView()
        }
            .padding()
            .navigationTitle("")
            .navigationBarHidden(true).navigationBarHidden(true)

    }
}

#Preview {
    HomeScreenView()
}
