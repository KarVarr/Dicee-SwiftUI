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
                ExtractedView(n: 1)
                    
            }
        }
        
    }
}


struct ExtractedView: View {
    let n: Int
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


