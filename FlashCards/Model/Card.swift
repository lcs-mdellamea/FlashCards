//
//  Card.swift
//  FlashCards
//
//  Created by Madison Dellamea on 12/10/21.
//

import Foundation

// Defines the information we'll trach
// "Blueprint" for a card
struct Card {
    let question: String
    let answer: String
}

// Define a list of cards to quiz with
let listOfCards = [

    Card(question: "What is the \"powerhouse\" of the cell?", answer: "Mitochondria.")
    
    ,
    
    Card(question: "What is Hydrolysis?", answer: "When water has broken away from a cell.")
    
    ,
    
    Card(question: "What is CH2?", answer: "Methylene.")
    
    ,
    
    Card(question: "What must we do at the start of a sentence?", answer: "Capitalize the first letter.")
    ,
    
]
