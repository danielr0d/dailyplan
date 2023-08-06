//
//  ActivityListViewModel.swift
//  dailyplan
//
//  Created by Daniel Rodrigues on 06/08/23.
//

import Foundation
import SwiftUI
import Combine



class ActivityListViewModel: ObservableObject {
    let didChange = PassthroughSubject<ActivityListViewModel,Never>()
        
        init() {
            fetchTopHeadlines()
        }
        
        var activities = [ActivityViewModel]() {
            didSet {
                didChange.send(self)
            }
        }
        
        private func fetchTopHeadlines() {
            
            guard let url = URL(string: "http://127.0.0.1:8080/activities") else {
                fatalError("URL is not correct!")
            }
            
            Webservice().loadTopHeadlines(url: url) { activities in
                
                if let activities = activities {
                    self.activities = activities.map(ActivityViewModel.init)
                }
                
            }
            
        }
        
}
