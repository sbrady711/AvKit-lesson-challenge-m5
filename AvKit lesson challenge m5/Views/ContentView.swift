//
//  ContentView.swift
//  AvKit lesson challenge m5
//
//  Created by Stephen Brady on 27/02/2023.
//

import SwiftUI
import AVKit

struct ContentView: View {
    @EnvironmentObject var models: HawkVmodel
  
    var body: some View {
        
        ScrollView {
            LazyVStack {
                ForEach(models.model) { animal in
                    
                    VStack{
                       
                        VideoPlayerView().cornerRadius(10)
                    
                    
                    Spacer()
                            
                                Description_View(id:animal.id, name: animal.name, type: animal.type, description: animal.description)
                                
                                
                                
                                
                            
                          
                            }
                                                    
                        }
                    }
                    
                }
                
                
            }
            
            
        }
        
    
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(HawkVmodel())
    }
}
