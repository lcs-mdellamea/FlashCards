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
    @State var currentCard = listOfCards.randomElement()!
    
    // This controls whether the answer is visable
    
    @State var isAnswerShowing = false
    
    // MARK: Computed Properties
    
    var body: some View {
        
        ScrollView {
            
            
            //Show Qustion
            HStack{
                Spacer()
                Text(currentCard.question)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                Spacer()
            }
            
            
            //Check answer
            Button(action: {
                
                //Reveal the answer
                isAnswerShowing = true
                withAnimation { isAnswerShowing = true
                }
            }, label: {
                Text("Check")
            })
                .buttonStyle(.bordered)
            
            //Show answer
            Text(currentCard.answer)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            //          CONDITION   true    false
                .opacity(isAnswerShowing ? 1.0 : 0.0)
            
            //Check answer
            Button(action: {
                // Get another question
                withAnimation {
                    currentCard = listOfCards.randomElement()!
                }
                //hide the answer
                isAnswerShowing = false
            }, label: {
                Text("Another")
            })
                .buttonStyle(.bordered)
            //          CONDITION   true    false
                .opacity(isAnswerShowing ? 1.0 : 0.0)
            
            
            
            
            
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
