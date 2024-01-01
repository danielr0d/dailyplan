//
//  Activity.swift
//  dailyplan
//
//  Created by Daniel Rodrigues on 06/08/23.
//

import Foundation

struct ActivitiesResponse: Codable {
    let activities: [Activity]
}

struct Activity: Codable {
    let title: String
    let description: String?
}

