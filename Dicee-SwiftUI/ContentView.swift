//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Karen Vardanian on 21.11.2022.
//

import SwiftUI

struct ContentView: View {
    
  @State  var leftDiceNumber = 1
  @State  var rightDIceNumber = 1
    
    
    
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
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDIceNumber)
                    
                }
                Spacer()
                
                Button("Roll") {
                    leftDiceNumber = Int.random(in: 1...6)
                    rightDIceNumber = Int.random(in: 1...6)
                }
                
                .font(.system(size: 50))
                .fontWeight(.heavy)
                .foregroundColor(.cyan)
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


