//
//  ActivityView.swift
//  dailyplan
//
//  Created by Daniel Rodrigues on 10/08/23.
//

import SwiftUI

struct ActivityMock: Identifiable, Hashable {
    let title: String;
    let id = UUID()
}

private var activities = [
    ActivityMock(title: "Activity 1"),
    ActivityMock(title: "Activity 2"),
    ActivityMock(title: "Activity 3"),
    ActivityMock(title: "Activity 4"),
    ActivityMock(title: "Activity 5")
]



struct ActivityView: View {
    @State private var multiSelection = Set<UUID>()
    
    func addItem() {
        print("Nyan")
    }
    
    var body: some View {
        
        List (selection: $multiSelection){
            ForEach(activities) {activities in
                Text(activities.title)
            }
            Button(action: addItem) {
                   Label("Add Activity", systemImage: "plus")
               }
        }
        
        .navigationTitle("Activities")
        .toolbar {EditButton()}
    }
}

struct ActivityView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView()
    }
}
