//
//  Webservice.swift
//  dailyplan
//
//  Created by Daniel Rodrigues on 06/08/23.
//

import Foundation

class Webservice {
    
    func loadTopHeadlines(url: URL, completion: @escaping ([Activity]?) -> ()) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            
            let response = try? JSONDecoder().decode(ActivitiesResponse.self, from: data)
            if let response = response {
                DispatchQueue.main.async {
                    completion(response.activities)
                }
            }
            
            
        }.resume()
        
    }
    
}
