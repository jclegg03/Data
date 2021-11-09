//
//  AddBucketListItemView.swift
//  Data
//
//  Created by Clegg, Jay on 11/9/21.
//

import SwiftUI

struct AddBucketListItemView: View
{
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct InputField: View
{
    let title: String
    let hint: String
    
    @Binding var result: String
    
    var body: some View
    {
        VStack(alignment: .leading)
        {
            Text(title)
                .font(.headline)
                .multilineTextAlignment(.leading)
            TextField(hint, text: $result)
                .disableAutocorrection(true)
        }
    }
    
}

struct AddBucketListItemView_Previews: PreviewProvider {
    static var previews: some View {
        Text("no preview")
    }
}
