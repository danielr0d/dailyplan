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
                    Label("Activities graph", systemImage: "chart.bar")
                    
                }
                .padding()
            }
        }
        NavigationView {
            NavigationLink {
                ActivityView()
            } label: {
                VStack {
                    Label("Your activities list", systemImage: "calendar.circle.fill")
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
