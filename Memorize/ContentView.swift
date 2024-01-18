//
//  ContentView.swift
//  Memorize
//
//  Created by Frank Jin on 2024-01-16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView()
            CardView()
            CardView()
            CardView()
        }
        .foregroundColor(.orange)
        .padding()
        
    }
}

struct CardView: View {
    //@State is only used to define temp state. Makes a pointer to memory so var is not actually changed, only the value at the memory.
    @State var isFaceUp = false
    
    var body: some View {
        //Trailing closue syntax for content (only if last arg is a function. For example Zstack(allignment:..., ..., content: {}) -> Zstack(allignment: default){} -> Zstack {}
        
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.foregroundColor(.white)
                base.strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 12)
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
