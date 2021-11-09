//
//  AddBucketListItemView.swift
//  Data
//
//  Created by Clegg, Jay on 11/9/21.
//

import SwiftUI

struct AddBucketListItemView: View
{
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var bucketStore: BucketStore
    @State var author: String = ""
    @State var bucketItem: String = ""
    
    var body: some View
    {
        Form
        {
            Section(header: Text("Make a new bucket list item!")
                        .font(.largeTitle)
                        .foregroundColor(.blue)
                        .multilineTextAlignment(.center))
            {
                InputField(title: "Creature", hint: "Who made this goal?", result: $author)
                InputField(title: "The goal", hint: "What do you want to acomplish?", result: $bucketItem)
            }
            if(!author.isEmpty && !bucketItem.isEmpty)
            {
                Button("Add the new item", action: addBucketItem)
                    .padding(.horizontal, 10.0)
            }
        }
    }
    
    private func addBucketItem() -> Void
    {
        let year = Calendar.current.component(.year, from: Date())
        let newBucketItem: BucketListItem = BucketListItem(id: UUID().uuidString, year: year, goal: bucketItem, creature: author)
        bucketStore.buckets.insert(newBucketItem, at: 0)
        self.presentationMode.wrappedValue.dismiss()
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
