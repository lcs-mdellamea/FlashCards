//
//  ContentView.swift
//  FlashCards
//
//  Created by Madison Dellamea on 12/10/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ScrollView {
            
            //Show Qustion
            Text("What is the \"powerhouse\" of the cell?")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            //Check answer
            Button(action: {
                //Reveal the answer
                print("Button was pressed")
            }, label: {
                Text("Check")
            })
                .buttonStyle(.bordered)
            
            
            
            
        }
        .padding()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
