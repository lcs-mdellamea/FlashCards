//
//  ContentView.swift
//  FlashCards
//
//  Created by Madison Dellamea on 12/10/21.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Stored Properties
    // Store the card to work with
    // It is randomly selected from the list of cards
    var currentCard = listOfCards.randomElement()!
    
    // MARK: Computed Properties
    
    
    
    var body: some View {
        
        ScrollView {
            
            
            //Show Qustion
            Text(currentCard.question)
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
            
            //Show answer
            Text(currentCard.answer)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            //Check answer
            Button(action: {
                //hide the answer
            }, label: {
                Text("Another")
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
