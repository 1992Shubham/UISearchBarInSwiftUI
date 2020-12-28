//
//  CustomSearchBar.swift
//  SearchBar
//
//  Created by SHUBHAM AGARWAL on 28/12/20.
//

import Foundation
import SwiftUI

struct CustomSearchBar: UIViewRepresentable {
    
    @Binding var text: String
    
    func makeUIView(context: Context) -> some UIView {
        let searchBar = UISearchBar(frame: .zero)
        searchBar.delegate = context.coordinator
        return searchBar
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        if let view = uiView as? UISearchBar {
            view.text = text
        }
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(text: $text)
    }
    
    class Coordinator: NSObject, UISearchBarDelegate {
        
        @Binding var text: String
        
        init(text: Binding<String>) {
            _text = text
        }
        
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            text = searchText
        }
    }
}
