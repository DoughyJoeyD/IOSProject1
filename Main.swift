//
//  main.swift
//  soccertest
//
//  Created by Joey Devlin on 7/8/18.
//  Copyright © 2018 Brandon&Joey. All rights reserved.
//

import Foundation

let player1 = ["Name": "Joe Smith", "Height" : "42", "Soccer Exp" : "Yes", "Guardian Names": "Jim and Jan Smith"]
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


//for item in players {
  //  print("\(item["Name"]!) is \(item["Height"]!) inches tall!")
//}
var sharks = [[String:String]] ()
var raptors = [[String:String]] ()
var dragons = [[String:String]] ()

func createTeams(){
    for item in players {
        if item["Soccer Exp"] == "Yes"{
            if sharks.count == dragons.count {
                var tempItem = item
                tempItem["team"] = "Sharks"
                sharks.append(tempItem)
                
            }
            else if raptors.count != sharks.count {
                var tempItem = item
                tempItem["team"] = "Raptors"
                raptors.append(tempItem)
                
            }
            else if dragons.count != raptors.count {
                var tempItem = item
                tempItem["team"] = "Dragons"
                dragons.append(tempItem)
            }
            else {
                print("Not Sure How we got here")
            }
        }
    }
        for item in players {
            if item["Soccer Exp"] == "No"{
                if sharks.count == dragons.count {
                    var tempItem = item
                    tempItem["team"] = "Sharks"
                    sharks.append(tempItem)
                    
                }
                else if raptors.count != sharks.count {
                    var tempItem = item
                    tempItem["team"] = "Raptors"
                    raptors.append(tempItem)
                    
                }
                else if dragons.count != raptors.count {
                    var tempItem = item
                    tempItem["team"] = "Dragons"
                    dragons.append(tempItem)
                }
                else {
                    print("Not Sure How we got here")
                }
            }
    }
    }


func printTeams() {
    print("THE SHARKS")
    print("-------")
    for item in sharks{
        print(item["Name"]!)
            
        }
    print("THE DRAGONS")
    print("--------")
    for item in dragons {
        print(item["Name"]!)
        
    }
    print("THE RAPTORS")
    print("------")
    for item in raptors {
    print(item["Name"]!)
    }
}

func createMessage(players:[[String:String]]) {
    let dragonsPractice = "March 17, at 1pm"
    let sharksPractice = "March 17, at 3pm"
    let raptorsPractice = "March 18, at 1pm"
    var playerLetters = [""]
    for player in players {
        
        if player["team"] == "Raptors" {
            if player != nil {
                
            let playerMessage = " Dear \(player["Guardian Name(s)"]!), \n  Your child, \(player["Name"]!) is on the Raptors. They will practice on \(raptorsPractice)"
                
                playerLetters.append(playerMessage)}}
        
        if player["team"] == "Dragons"{
           if player != nil {
            
           let playerMessage = " Dear \(player["Guardian Name(s)"]!), \n Your child, \(player["Name"]!) is on the Dragons. They will practice on \(dragonsPractice)"
            
           playerLetters.append(playerMessage)
           }}
        
        if player["team"] == "Sharks"{
            if player != nil {
                
                let playerMessage = " Dear \(player["Guardian Name(s)"]!), \n Your child, \(player["Name"]!) is on the Sharks. They will practice on \(sharksPractice)"
                
                playerLetters.append(playerMessage)
            }}
        
        
}
    for item in playerLetters{
        print(item)
        print("\n")
    }
}

createTeams()
createMessage(players: sharks)
createMessage(players: raptors)
createMessage(players: dragons)
