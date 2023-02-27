//
//  Description View.swift
//  AvKit lesson challenge m5
//
//  Created by Stephen Brady on 27/02/2023.
//

import SwiftUI



struct Description_View: View {
    var id: String
    var name: String
    var type: String
    var description:String
   
   
    

    var body: some View {
        
        
        
        
        VStack(alignment: .leading, spacing: -30 ){
            HStack(alignment:.center) {
                Text(id + ".").bold().font(.title2)
                Text(name).font(.largeTitle)
            
                
            }.padding(.all)
            HStack {
             Text("\(type) = ")
                Text(description)
            }.padding(.all)
           
            
                Spacer()
                
        }.padding(.trailing)
            
            
            
        }
    }


struct Description_View_Previews: PreviewProvider {
    static var previews: some View {
        Description_View(id:"1", name: "Hawk", type: "Predator", description: "description")    }
}
