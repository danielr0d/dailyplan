//
//  ActivityView.swift
//  dailyplan
//
//  Created by Daniel Rodrigues on 10/08/23.
//

import SwiftUI


struct ActivityView: View {
    @State private var multiSelection = Set<UUID>()
    
    var body: some View {
        Text("Acitivity List")
        List {
            Text("Activity 1")
            Text("Activity 2")
            Text("Activity 3")
        }
        
    }
}

struct ActivityView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView()
    }
}
