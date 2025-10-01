//
//  FruitDetailView.swift
//  Shopping App (06110)
//
//  Created by Naomi on 2025-09-30.
//

import SwiftUI
struct RoundedShape: Shape {
    let corners: UIRectCorner
    let radius: CGFloat

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}
// counter component
struct Counter: View {

    @State var counter = 0
    var body: some View {
        HStack(spacing: 25) {
            Button {
                self.counter += 1
            } label: {
                Image(systemName: "plus")
            }
            Text("\(self.counter)")
            Button {
                if counter != 0 {
                    self.counter -= 1
                }
            } label: {
                Image(systemName: "minus")
            }
            .foregroundStyle(.black)
            .frame(width: 130, height: 50)
            .background(Color("bgColor").opacity(0.15))
            .cornerRadius(12)
            .padding()

        }
    }
}

struct FruitDetailView: View {
    let fruit: Fruit
    var body: some View {
        VStack(alignment: .leading, spacing: 25) {
            Image("bg")
                .resizable()
                .ignoresSafeArea()
                .shadow(color: .gray, radius: 5, x: 5, y: 5)
                .clipShape(RoundedShape.init(corners: [.bottomLeft, .bottomRight], radius: 50))

                .overlay {
                    Image("\(fruit.image)")
                        .resizable()
                        .frame(width:220,height:220,alignment: .center)
                }
                .edgesIgnoringSafeArea(.all)
            Spacer()
            //
            Text("\(fruit.title.rawValue) - Medium")
                .fontWeight(.bold)
                .font(.title)
                .padding(.horizontal)
                .textCase(.uppercase)

            Text("Each (500g - 700g)")
                .padding(.horizontal)
            Text("Organic agriculture is intended to produce high quality, nutritious food that contributes to preventive health care and well-being. In view of this, it avoids the use of fertilizers, pesticides, animal drugs and food additives that may have adverse health effects.")
                .font(.body)
                .fontWeight(.regular)
                .multilineTextAlignment(.leading)
                .lineLimit(6)
                .padding(.horizontal)
            HStack{
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color("bgColor"))
                    .opacity(0.15)
                    .font(.system(size: 40))
                    .frame(width: 50, height: 50)
                    .overlay {
                        Image(systemName: "hourglass")
                    }
                VStack(alignment: .leading, spacing:5){
                    Text("Dlivery Time")
                    Text("25-30 Min")
                }
            }.padding(.horizontal)
            HStack{
                Text("\(fruit.price)")
                    .fontWeight(.medium)
                    .font(.title)
                    .padding(.horizontal)
                Spacer()
                //Counter
                Counter()
            }
            HStack{
                Spacer()

                Image("bg")
                    .resizable()
                    .frame(width: 350, height: 50, alignment: .center)
                    .cornerRadius(15)
                    .shadow(color: .gray, radius: 5, x: 5, y: 5)
                    .overlay {
                        Text("Add to cart")
                            .font(.title3)
                            .fontWeight(.medium)
                    }.padding(.horizontal)

                Spacer()
            }



        }
    }

}

#Preview {
    FruitDetailView(fruit: test)
}
