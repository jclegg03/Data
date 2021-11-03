//
//  SearchBarView.swift
//  Data
//
//  Created by Clegg, Jay on 11/3/21.
//

import SwiftUI

struct SearchBarView: View
{
    @Binding var searchText : String
    @State private var isEditing : Bool = false
    
    var body: some View
    {
        ZStack
        {
            Rectangle()
                .foregroundColor(Color(.systemGray6))
            HStack
            {
                Image(systemName: "magnifyingglass")
                    .padding(.leading, -10)
                TextField("search ...", text: $searchText)
                if isEditing
                {
                    Button(action: clearTextField)
                    {
                        Image(systemName: "multiply.circle.fill")
                    }
                    .padding(.trailing, 5)
                }
            }
            .foregroundColor(.gray)
            .padding(.leading, 15)
            .onTapGesture
            {
                self.isEditing = true
            }
        }
        .frame(height: 40)
        .cornerRadius(12)
        .padding()
    }
    
    func clearTextField() -> Void
    {
        self.isEditing = false
        self.searchText = ""
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}


struct SearchBarView_Previews: PreviewProvider
{
    static var previews: some View
    {
        SearchBarView(searchText : .constant(""))
    }
}
