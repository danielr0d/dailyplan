//
//  ActivityViewModel.swift
//  dailyplan
//
//  Created by Daniel Rodrigues on 06/08/23.
//

import Foundation

class ActivityViewModel: Identifiable {
    
    let id = UUID()
    
    let activity: Activity
    
    init(activity: Activity){
        self.activity = activity
    }
    
    var title: String{
        return self.activity.title
    }
    
    var description: String {
        return self.activity.description ?? ""
    }
}
