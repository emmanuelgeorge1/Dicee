//
//  ContentView.swift
//  Dicee
//
//  Created by Emmanuel George on 28/08/22.
//

import SwiftUI

struct ContentView: View {
    @State var leftDiceView = 1
    @State var rightDiceView = 1
    var body: some View {
        ZStack {
            Image("background").resizable()  .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
               
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: leftDiceView)
                    DiceView(n: rightDiceView)
                 
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    leftDiceView = Int.random(in: 1...6)
                    rightDiceView = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .foregroundColor(.white)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(.horizontal)
                }
                .background(Color.red)
            }
        }
    }
}
struct DiceView: View {
    let n: Int
    var body: some View {
        Image("dice\(n)").resizable().aspectRatio(1,contentMode: .fit)
            .padding()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


