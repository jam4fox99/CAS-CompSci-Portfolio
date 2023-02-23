//
//  EarthquakeList.swift
//  Earthquakes
//
//  Created by Jake Milken on 1/13/23.
//

import SwiftUI

struct EarthquakeList: View {
    @State var IMBDData:IMDBSearch?
    var body: some View {
        if let IMBDData = IMBDData {
            NavigationView {
               // List(IMBDData.data, id: \.id) { IMDBSearch in
                    NavigationLink{
                        
                    }label: {
                        Text(IMDBSearch.objectDate)
                    }
                    
                    
                }
                .navigationTitle("Recent Earthquakes")
            }
        }
        
        else{
            Text("Loading . . . ")
                .onAppear(perform: {
                    loadIMDBSearch { (IMDBSearch) in
                        self.IMBDData = IMDBSearch
                    }
                })
        }
    }
}

struct EarthquakeList_Previews: PreviewProvider {
    static var previews: some View {
        EarthquakeList()
    }
}
