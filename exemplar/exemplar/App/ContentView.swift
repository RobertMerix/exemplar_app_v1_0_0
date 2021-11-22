//
//  ContentView.swift
//  exemplar
//
//  Created by Roberto I. Merizalde on 27/10/21.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    
    var categories: [Category] = categoryData
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(categoryData) { item in
                    CategoryRowView(categories: item)
                }
            }
            .navigationTitle("Categorias")
        } //: NAVIGATION
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(categories: categoryData)
            .preferredColorScheme(.light)
    }
}
