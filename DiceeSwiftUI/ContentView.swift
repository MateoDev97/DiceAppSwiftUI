//
//  ContentView.swift
//  DiceeSwiftUI
//
//  Created by Mateo Ortiz on 26/02/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    
    var body: some View {
        
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea(.all)
            
            VStack {
                
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNumber)
                }
                .padding(.horizontal)
                Spacer()
                Button {
                    leftDiceNumber = Int.random(in: 1...6)
                    rightDiceNumber = Int.random(in: 1...6)
                } label: {
                  Text("Roll")
                    .font(.system(size: 50))
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .padding(.horizontal)
                }.background(Color.red)
                .frame(width: 150, height: 80)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceView: View {
    let n: Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}
