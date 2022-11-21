//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Karen Vardanian on 21.11.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                    .padding(.top, 100)
                Spacer()
                HStack {
                    DiceView(n: 1)
                    DiceView(n: 2)
                    
                }
                Spacer()
                
                Button("Roll") {
                    
                }
                .padding(.all)
                .font(.system(size: 50))
                .fontWeight(.heavy)
                .foregroundColor(.white)
                .background(Color.red)
            }
        }
        
    }
}


struct DiceView: View {
    let n: Int
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .frame(width: 150)
            .padding(.all)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


