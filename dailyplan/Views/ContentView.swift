//
//  ContentView.swift
//  dailyplan
//
//  Created by Daniel Rodrigues on 06/08/23.
//

import SwiftUI

struct ContentView : View {
    
    @ObservedObject var model = ActivityListViewModel()
    
    var body: some View {
        
        NavigationView {
            NavigationLink {
                ChartView()
            } label: {
                VStack {
                    Label("Your account", systemImage: "folder.circle")
                    
                }
                .padding()
            }
        }
        NavigationView {
            NavigationLink {
                ActivityView()
            } label: {
                VStack {
                    Text("Navigate to Activities")
                }
            }
            .padding(.top)
        }
        
        
//        List(model.activities) { activity in
//            VStack(alignment: .leading) {
//
//            Text(activity.title)
//                .lineLimit(nil)
//
//            Text(activity.description)
//                .foregroundColor(.secondary)
//                .lineLimit(nil)
//
//            }
    }

}
