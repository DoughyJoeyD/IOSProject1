//: Playground - noun: a place where people can play

import UIKit

import Foundation
// This stores each player with a dictonary of info about them
let player1 = ["Name": "Joe Smith", "Height" : "42", "Soccer Exp" : "Yes", "Guardian Name(s)": "Jim and Jan Smith"]
let player2 = ["Name": "Jill Tanner", "Height" : "36", "Soccer Exp" : "Yes", "Guardian Name(s)": "Clara Tanner"]
let player3 = ["Name": "Bill Bon", "Height" : "43", "Soccer Exp" : "Yes", "Guardian Name(s)": "Sara and Jenny Bon"]
let player4 = ["Name": "Eva Gordon", "Height" : "45", "Soccer Exp" : "No", "Guardian Name(s)": "Wendy and Mike Gordon"]
let player5 = ["Name": "Matt Gill", "Height" : "40", "Soccer Exp" : "No", "Guardian Name(s)": "Charles and Sylvia Gill"]
let player6 = ["Name": "Kimmy Stein", "Height" : "41", "Soccer Exp" : "No", "Guardian Name(s)": "Bill and Hillary Stein"]
let player7 = ["Name": "Sammy Adams", "Height" : "45", "Soccer Exp" : "No", "Guardian Name(s)": "Jeff Adams"]
let player8 = ["Name": "Karl Saygan", "Height" : "42", "Soccer Exp" : "Yes", "Guardian Name(s)": "Heather Bledsoe"]
let player9 = ["Name": "Suzane Greenberg", "Height" : "44", "Soccer Exp" : "Yes", "Guardian Name(s)": "Henrietta Dumas"]
let player10 = ["Name": "Sal Dali", "Height" : "41", "Soccer Exp" : "No", "Guardian Name(s)": "Gala Dali"]
let player11 = ["Name": "Joe Kavalier", "Height" : "39", "Soccer Exp" : "No", "Guardian Name(s)": "Sam and Elaine Kavalier"]
let player12 = ["Name": "Ben Finkelstein", "Height" : "44", "Soccer Exp" : "No", "Guardian Name(s)": "Aaron and Jill Finkelstein"]
let player13 = ["Name": "Diego Soto", "Height" : "41", "Soccer Exp" : "Yes", "Guardian Name(s)": "Robin and Sarika Soto"]
let player14 = ["Name": "Chloe Alaska", "Height" : "47", "Soccer Exp" : "No", "Guardian Name(s)": "David and Jamie Alaska"]
let player15 = ["Name": "Arnold Willis", "Height" : "43", "Soccer Exp" : "No", "Guardian Name(s)": "Claire Willis"]
let player16 = ["Name": "Phillip Helm", "Height" : "44", "Soccer Exp" : "Yes", "Guardian Name(s)": "Thomas Helm and Eva Jones"]
let player17 = ["Name": "Les Clay", "Height" : "42", "Soccer Exp" : "Yes", "Guardian Name(s)": "Wynonna Brown"]
let player18 = ["Name": "Herschel Krustofski", "Height" : "45", "Soccer Exp" : "Yes", "Guardian Name(s)": "Hyman and Rachel Krustofski"]

let players = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]


// To init the teams
var teamSharks = [[String:String]] ()
var teamRaptors = [[String:String]] ()
var teamDragons = [[String:String]] ()
// function creates the teams and sorts the players by there experience

func createTeams(){
    for item in players {
        // sorts the players and appends them based on the item count of the 3 teams
        if item["Soccer Exp"] == "Yes"{
            if teamSharks.count == teamDragons.count {
                var tempItem = item
                tempItem["team"] = "Sharks"
                teamSharks.append(tempItem)
                
            }
            else if teamRaptors.count != teamSharks.count {
                var tempItem = item
                tempItem["team"] = "Raptors"
                teamRaptors.append(tempItem)
                
            }
            else if teamDragons.count != teamRaptors.count {
                var tempItem = item
                tempItem["team"] = "Dragons"
                teamDragons.append(tempItem)
            }
            else {
                print("Not Sure How we got here")
            }
        }
    }
    // sorts the unexperienced players the same way as above
    for item in players {
        if item["Soccer Exp"] == "No"{
            if teamSharks.count == teamDragons.count {
                var tempItem = item
                tempItem["team"] = "Sharks"
                teamSharks.append(tempItem)
                
            }
            else if teamRaptors.count != teamSharks.count {
                var tempItem = item
                tempItem["team"] = "Raptors"
                teamRaptors.append(tempItem)
                
            }
            else if teamDragons.count != teamRaptors.count {
                var tempItem = item
                tempItem["team"] = "Dragons"
                teamDragons.append(tempItem)
            }
            else {
                print("Not Sure How we got here")
            }
        }
    }
}

// Drafts the messages for each player given an array of players (teamRaptors, teamDragons, teamSharks)
func createMessage(players:[[String:String]]) {
    let dragonsPractice = "March 17, at 1pm"
    let sharksPractice = "March 17, at 3pm"
    let raptorsPractice = "March 18, at 1pm"
    var letters = [""]
    for player in players {
        // If the player is on a team draft them a message with the right practice time
        if player["team"] == "Raptors" {
                let playerMessage = " Dear \(player["Guardian Name(s)"]!), \n  Your child, \(player["Name"]!) is on the Raptors. They will practice on \(raptorsPractice)"
            
                letters.append(playerMessage)}
        
        if player["team"] == "Dragons"{
                let playerMessage = " Dear \(player["Guardian Name(s)"]!), \n Your child, \(player["Name"]!) is on the Dragons. They will practice on \(dragonsPractice)"
                
                letters.append(playerMessage)
            }
        
        if player["team"] == "Sharks"{
                let playerMessage = " Dear \(player["Guardian Name(s)"]!), \n Your child, \(player["Name"]!) is on the Sharks. They will practice on \(sharksPractice)"
                
                letters.append(playerMessage)}
        
        
    }
    //Prints nicely to the console
    for item in letters{
        print(item)
        print("\n")
    }
}
//Calls the team function
createTeams()

//Calls the createMessage Function given each teams array of players
createMessage(players: teamSharks)
createMessage(players: teamRaptors)
createMessage(players: teamDragons)
