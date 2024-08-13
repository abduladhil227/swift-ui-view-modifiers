//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Abdul Adhil on 13/08/24.
//

import SwiftUI

//New custom view for text because the text views are identical apart from the text being shown in them

struct capsuleText: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .background(.blue)
            .clipShape(.capsule)
    }
}


struct ContentView: View {
    var body: some View {
        VStack (spacing: 10){
            capsuleText(text: "First")
                .foregroundColor(.white)
            capsuleText(text: "Second")
                .foregroundStyle(.yellow)
            
//            Text("First")
//                .font(.largeTitle)
//                .padding()
//                .background(.blue)
//                .clipShape(.capsule)
//            
//            Text("Second")
//                .font(.largeTitle)
//                .padding()
//                .background(.blue)
//                .clipShape(.capsule)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
