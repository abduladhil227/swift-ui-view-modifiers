//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Abdul Adhil on 13/08/24.
//

import SwiftUI

struct Title: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.white)
            .padding()
            .background(.blue)
            .clipShape(.rect(cornerRadius: 20))
    }
}

extension View {
    func titleStyle() -> some View{
        modifier(Title())
    }
}

// custom view modifiers can have their own stored properties, whereas extensions to View cannot.

struct WaterMark: ViewModifier{
    var text: String// stored propertie
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing){
            content
            Text(text)
                .font(.caption)
                .foregroundStyle(.white)
                .padding(5)
                .background(.black)
        }
    }
}

extension View{
    func watermarked(with text: String) -> some View{
        modifier(WaterMark(text: text))
    }
}

struct ContentView: View {
    var body: some View {
        
        Color.blue
            .frame(width: 300, height: 200)
            .watermarked(with: "Abdul Adhil")
        
        
        Text("Hello, world!")
            .titleStyle()
//            .modifier(Title())
        
    }
}

#Preview {
    ContentView()
}
