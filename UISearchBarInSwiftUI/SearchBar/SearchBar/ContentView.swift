//
//  ContentView.swift
//  SearchBar
//
//  Created by SHUBHAM AGARWAL on 28/12/20.
//

import SwiftUI

struct ContentView: View {
    
   // @State var text: String = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
               // CustomSearchBar(text: $text)
                ForEach(countryNameArr, id: \.self) { name in
                    
                    HStack {
                        Text(name).padding()
                        Spacer()
                    }
                }
            }.navigationTitle("Country List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
