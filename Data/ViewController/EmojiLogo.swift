//
//  EmojiLogo.swift
//  Data
//
//  Created by Clegg, Jay on 10/26/21.
//

import SwiftUI

struct EmojiLogo: View
{
    var emoji : String
    
    var body: some View
    {
        Text(emoji)
            .font(.system(size: 150))
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.purple, lineWidth: 20))
            .shadow(radius: 20)
    }
}

struct EmojiView_Previews: PreviewProvider
{
    static var previews: some View
    {
        EmojiLogo(emoji: "💩")
    }
}
