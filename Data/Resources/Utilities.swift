//
//  Utilities.swift
//  Data
//
//  Created by Clegg, Jay on 10/26/21.
//

import Foundation

let demoItem : BucketListItem = BucketListItem(year: -9395891, goal: "My goal is to annoy someone here", creature: "Creature the house elf")
let secondDemo: ElectionDatum = ElectionDatum(state: "Utah", candidateName: "Donald John Trump", sampleSize: 13463, weight: 0.003, influence: 0.6)
let thirdDemo: VoterRegistration = VoterRegistration(state: "Utah", year: 2002, month: "January", newVoters: 116413)

func generateRandomEmoji(of emojiType: String) -> String
{
    let start : Int
    let range : Int
    
    if (emojiType == "face")
    {
        start = 0x1F601
        range = 52
    }
    else if (emojiType == "symbol")
    {
        start = 0x1F680
        range = 52
    }
    else if (emojiType == "greek")
    {
        start = 0x03B1
        range = 24
    }
    else
    {
        start = 0x1F400
        range = 52
    }
    
    let unicodeValue = start + Int(arc4random_uniform(UInt32(range)))
    let currentEmoji = UnicodeScalar(unicodeValue)?.description ?? "👹"
    
    return currentEmoji
}

func randomSymbolType() -> String
{
    let choice = arc4random()
    
    if(choice % 4 == 0)
    {
        return "face"
    }
    else if(choice % 4 == 1)
    {
        return "symbol"
    }
    else if(choice % 4 == 2)
    {
        return "greek"
    }
    else
    {
        return "animal"
    }
}

func loadJSON (from file : String) -> [Any]
{
    if let dataURL = Bundle.main.url(forResource: file, withExtension: "json")
    {
        let data = try! Data(contentsOf: dataURL)
        let decoder = JSONDecoder()
        do
        {
            if(file == "bucket2021")
            {
                let results = try decoder.decode([BucketListItem].self, from: data)
                return results
            }
            else if(file == "Presidential Polls")
            {
                let results = try decoder.decode([ElectionDatum].self, from: data)
                return results
            }
            else if(file == "Voters")
            {
                let results = try decoder.decode([VoterRegistration].self, from: data)
                return results
            }
        }
        catch let DecodingError.dataCorrupted(context) {
                print(context)
            } catch let DecodingError.keyNotFound(key, context) {
                print("Key '\(key)' not found:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch let DecodingError.valueNotFound(value, context) {
                print("Value '\(value)' not found:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch let DecodingError.typeMismatch(type, context)  {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                print("error: ", error)
            }
    }
    return [Any]() // TOTAL DATA READ FAILURE!
}
