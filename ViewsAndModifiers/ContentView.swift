//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Abdul Adhil on 13/08/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var useRedText = false
    
    //View as properties
    
    //1.computed properties
    //but swift will not apply the view builder properties automatically
    //View builder - This has the effect of silently wrapping multiple views in one of those TupleView containers, so that even though it looks like we’re sending back multiple views they get combined into one TupleView.
    
    var text: some View{
        Text("Hi, how are you")
    }
    
   //2.stored properties
    let text1 = Text("First")
    let text2 = Text("Second")
    
    
   //if you want to sent multiple view there are three ways
   //1.V or H stack 2.Group 3.@ViewBuilder
   //@ViewBuilder var spells
    var spells: some View{
        VStack{
            Text("healing")
            Text("rage")
        }
     //Group{}
    }
    
    var body: some View {
        VStack{
            text1
            text2
                .foregroundStyle(.red)
        }
        
        //Conditional modifier
        Button("Hello World!"){
            useRedText.toggle()
        }
        .foregroundStyle(useRedText  ? .red : .blue)
        
        //Environment modifier
        //if child modifier override the same modifier the child version takes priority
        VStack{
            Text("Hello")
                .font(.largeTitle)
            Text("Abdul")
            Text("Adhil")
            Text("Welcome")
        }
        //Environment modifier
        .font(.title)
        
        
    }
}

#Preview {
    ContentView()
}
