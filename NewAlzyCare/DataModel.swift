//
//  DataModel.swift
//  NewAlzyCare
//
//  Created by Gaurav on 20/05/24.
//

import Foundation

struct category{
    var image: String
    var name: String
}

struct SuggestedGame{
    var gameImage: String
    var gameName: String
}

struct ProfileInfo{
    let userName: String
    var userEmoji: String
    let userEmail: String
    let userPhoneNumber: String
    let userAddress: String
    let userDOB: Date
    
//    if true then male and caregiver, else female or patient
    let userType: Bool
    let userGender: Bool
    
}

let userProfile = ProfileInfo(userName: "Gaurav Mishra", userEmoji: "", userEmail: "david@gmail.com", userPhoneNumber: "+91-8882445490", userAddress: "Delhi", userDOB: Date(), userType: true, userGender: true)

class SuggestedDataModel{
    static var suggestedGames = [SuggestedGame(gameImage: "Word Puzzle", gameName: "Word Puzzle"), SuggestedGame(gameImage: "Hangman", gameName: "Hangman"), SuggestedGame(gameImage: "ScattergoriesBox", gameName: "ScattergoriesBox"), SuggestedGame(gameImage: "Guess the Time", gameName: "Guess the Time"), SuggestedGame(gameImage: "Calculate", gameName: "Calculate")]
}

class DataModel{
    static var categories = [category(image: "Diary", name: "Diary"), category(image: "Meditation", name: "Meditation"), category(image: "Story Book", name: "Story Book")]
}
