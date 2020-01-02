//
//  ContentView.swift
//  Grid
//
//  Created by ConstantMD Mac-mini on 2/1/20.
//  Copyright © 2020 ConstantMD Mac-mini. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView
            {
                List {
                    ScrollView(.horizontal){
                    ContentViewcell()
                    }
                }.navigationBarTitle(Text("Collections"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct ContentViewcell: View {
    var body: some View {
        var photos : [[Int]] = []
        _ = (1...100 ).publisher
            .collect(2)
            .collect()
            .sink(receiveValue: {photos =  $0 })
        
        return
            VStack{
                ForEach(0..<photos.count, id: \.self){ collect in
                    
                    HStack{
                    
                    ForEach(photos[collect] , id: \.self){ collection in
                        VStack{
                        Image("p\(collection)")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(3)
                            
                            
                        }.frame(width: 150, height: 150, alignment: .center).border(Color.black, width: 2)
                        .padding()
                        }
                    }
                }
                
        }
    }
}
struct ContentViewcell_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewcell()
    }
}
