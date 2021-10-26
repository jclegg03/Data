//
//  Utilities.swift
//  Data
//
//  Created by Clegg, Jay on 10/26/21.
//

import Foundation

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
