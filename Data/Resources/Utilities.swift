//
//  Utilities.swift
//  Data
//
//  Created by Clegg, Jay on 10/26/21.
//

import Foundation

let demoItem : BucketListItem = BucketListItem(year: -9395891, goal: "My goal is to annoy someone here", creature: "Creature the house elf")

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

func loadJSON (from file : String) -> [BucketListItem]
{
    if let dataURL = Bundle.main.url(forResours: file, withExtension: "json")
    {
        let data = try! Data(contentsOf: dataURL)
        let decoder = JSONDecoder()
        do
        {
            let results try decoder.decode([BucketListItem].self, from: data)
            return results
        }
        catch
        {
            print(error.localizeDescription)
        }
    }
    return [BucketListItem]() // TOTAL DATA READ FAILURE!
}
