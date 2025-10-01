//
//  OnBoardingScreen.swift
//  Shopping App (06110)
//
//  Created by Naomi on 2025-09-30.
//

import SwiftUI

struct OnBoardingScreen: View {
    var body: some View {
        NavigationView {
                    VStack(spacing: 30) {
                        Spacer() // everything to the bottom of the screen
                        
                        Image("img")
                            .resizable()
                            .scaledToFit()
                            .padding()
                        VStack(alignment: .leading, spacing: 10){
                            Text("Order your favorite fruits")
                                .fontWeight(.bold)
                                .font(.largeTitle)
                            
                            Text("Eat fresh fruits and try to be healthy")
                                .font(.title3)
                                .foregroundStyle(.black.opacity(0.7))
                        }
                        NavigationLink(destination: HomeScreenView()) {
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color("6"))
                                .frame(width: 280, height: 60, alignment: .trailing)
                                .overlay {
                                    HStack(spacing: 10) {
                                        Text("Next")
                                            .font(.title)
                                            .fontWeight(.bold)
                                        
                                        Image(systemName: "chevron.right")
                                    }
                                    .foregroundStyle(.black)
                                }
                        }
                        
                        Spacer()

            }
                    .padding()
                    .navigationTitle("")
                    .navigationBarHidden(true)
        }
    }
}

#Preview {
    OnBoardingScreen()
}
