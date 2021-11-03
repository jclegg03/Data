//
//  DataView.swift
//  Data
//
//  Created by Clegg, Jay on 10/12/21.
//

import SwiftUI

struct DataView: View
{
    @ObservedObject var bucketStore: BucketStore = BucketStore(buckets: loadJSON(from: "bucket2021") as! [BucketListItem])
    @ObservedObject var electionStore: ElectionStore = ElectionStore(electionData: loadJSON(from: "PresidentialPolls") as! [ElectionDatum])
    @ObservedObject var registrationStore: RegistrationStore = RegistrationStore(voterRegistrationData: loadJSON(from: "VoterRegistration") as! [VoterRegistration])
    
    @State private var searchedText: String = ""
    
    private var filteredResults: [BucketListItem]
    {
        if(searchedText.isEmpty)
        {
            return bucketStore.buckets
        }
        else
        {
            return bucketStore.buckets.filter
            {
                $0.creature.lowercased().contains(searchedText.lowercased()) ||
                $0.goal.lowercased().contains(searchedText.lowercased())
            }
        }
    }
    
    var body: some View
    {
        NavigationView
        {
            VStack
            {
                List
                {
                    Section(header: Text("Bucket Lists"))
                    {
                        ForEach(bucketStore.buckets)
                        {
                            bucket in
                        
                            BucketRowView(currentBucket: bucket, icon: generateRandomEmoji(of: "greek"))
                        }
                    }
                    Section(header: Text("Election Polls"))
                    {
                        ForEach(electionStore.electionData.indices)
                        {
                            index in
                            
                            ElectionDataRowView(currentElectionDatum: electionStore.electionData[index])
                        }
                    }
                    Section(header: Text("Voter Registration"))
                    {
                        ForEach(registrationStore.voterRegistrationData.indices)
                        {
                            index in
                            
                            
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider
{
    static var previews: some View
    {
        DataView()
    }
}
