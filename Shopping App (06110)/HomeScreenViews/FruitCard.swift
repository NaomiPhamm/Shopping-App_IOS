//
//  FruitCard.swift
//  Shopping App (06110)
//
//  Created by Naomi on 2025-09-30.
//

import SwiftUI
// simulate passing the data to this fruitcard
struct FruitCard: View {
    let fruit: Fruit
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 5) {
                Text(fruit.title.rawValue)
                    .fontWeight(.bold)
                    .font(.title3)
                    .foregroundStyle(.black)
                
                Text(fruit.price)
                    .font(.title3)
                    .foregroundStyle(.black.opacity(0.7))
                
                Spacer()
            }
            .padding()
            .frame(width: 175, height: 150, alignment: .center)
            .background(Color(fruit.color))
            .clipShape(RoundedRectangle(cornerRadius: 30))
            .shadow(color: .black.opacity(0.5), radius: 10, x: 5, y: 5)
            // image
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 110)
                .shadow(color: .black.opacity(0.5), radius: 10, x: 5, y: 5)
                .offset(y: 60)


        }
        .frame(width:175,height:250,alignment:.center)
    }
}

let test = Fruit(id: 1, title: .apple, image: "apple",
                 price: "3.44$", color: "1")

#Preview {
    FruitCard(fruit: test)
}


