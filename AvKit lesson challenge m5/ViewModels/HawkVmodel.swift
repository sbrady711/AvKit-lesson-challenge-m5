//
//  HawkVmodel.swift
//  AvKit lesson challenge m5
//
//  Created by Stephen Brady on 27/02/2023.
//

import Foundation

class HawkVmodel: ObservableObject {
    
    @Published  var model = [HawkModel]()
    var playvideoIndex = 1
    
    init(model: [HawkModel] = [HawkModel](), playvideoIndex: Int = 1) {
        
        func getLocalData() {
            // Get a url to the json file
            let jsonUrl = Bundle.main.url(forResource: "Hawk", withExtension: "json")
            
            do {
                // Read the file into a data object
                let jsonData = try Data(contentsOf: jsonUrl!)
                
                // Try to decode the json into an array of modules
                let jsonDecoder = JSONDecoder()
                _ = try jsonDecoder.decode([HawkModel].self, from: jsonData)
                
                // Assign parsed modules to modules property
              
            }
            catch {
                // TODO log error
                print("Couldn't parse local data")
            }
            
        }


        
        self.model = model
        self.playvideoIndex = playvideoIndex
        
    }
        
    }
    
    
    
