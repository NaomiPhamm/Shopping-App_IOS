//\
//xax/X".ZZ>a mkjfn adjk bni kabh dahjkab bnad hnadjkzzz"//  NearYouView.swift
//  Shopping App (06110)
//
//  Created by Naomi on 2025-09-30.
//

import SwiftUI
// sample dta
let dataArray: [Place] = [
        .init(id: 0, name: "Food 365 Valley", time: "9:00 - 10:00", rating: "★ 4.7 |📍 1.5 km", image: "1"),
        .init(id: 1, name: "Super Store", time: "8:00 - 10:00", rating: "★ 4.5 |📍 1.7 km", image: "2"),
        .init(id: 2, name: "Organic Farm", time: "6:00 - 11:00", rating: "★ 4.9 |📍 2.0 km", image: "3"),
        .init(id: 3, name: "Big Basket", time: "9:00 - 10:00", rating: "★ 3.7 |📍 2.2 km", image: "4"),
        .init(id: 4, name: "Easy Mart", time: "8:00 - 12:00", rating: "★ 4.7 |📍 2.7 km", image: "5"),
        .init(id: 5, name: "Let's Shop", time: "7:00 - 11:00", rating: "★ 4.0 |📍 3.0 km", image: "6")
    ]
struct NearYouView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            ForEach(dataArray, id: \.id) { place in
                //navigation Link to a nearyou detail screen
                // UI- make a replace of the fruit details screen
                NavigationLink {
                    NearYouDetailView(place: place)   // destination screen
                } label: {
                    HStack {
                        RoundedRectangle(cornerRadius: 15)
                            .foregroundStyle(.gray.opacity(0.2))
                            .frame(width: 100, height: 100)
                            .overlay {
                                Image(place.image)
                                    .resizable()
                            }
                        VStack(alignment: .leading) {
                            Text("\(place.name)")
                                .font(.headline)
                            
                            Text("\(place.time)")
                                .font(.subheadline)
                                .foregroundStyle(.gray)
                            
                            Text("\(place.rating)")
                        }
                        Spacer()
                    }
                    .padding(.horizontal)
                }

                
//                HStack {
//                    RoundedRectangle(cornerRadius: 15)
//                        .foregroundStyle(.gray.opacity(0.2))
//                        .frame(width: 100, height: 100)
//                        .overlay {
//                            Image(place.image)
//                                .resizable()
//                        }
//                    VStack(alignment: .leading) {
//                        Text("\(place.name)")
//                            .font(.headline)
//                        
//                        Text("\(place.time)")
//                            .font(.subheadline)
//                            .foregroundStyle(.gray)
//                        
//                        Text("\(place.rating)")
//                    }
//
//                }
            }
        }
    }

}

#Preview {
    NearYouView()
}
