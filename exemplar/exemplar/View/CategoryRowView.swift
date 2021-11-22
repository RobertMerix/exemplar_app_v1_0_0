//
//  CategoryRowView.swift
//  exemplar
//
//  Created by Roberto I. Merizalde on 28/10/21.
//

import SwiftUI

struct CategoryRowView: View {
    
    // MARK: - PROPERTIES
    
    var screeWidth = UIScreen.main.bounds.size.width
    var categories: Category
    
    // MARK: - BODY
    var body: some View {
        
        HStack {
            
            Image(categories.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 90, height: 80, alignment: .center)
                .border(.ultraThinMaterial)
                .clipped()
                
            Spacer()
            
            Text(categories.name)
                .font(.title2)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
//                .padding(.trailing, 20)
            
        } //: HSTACK
        
    }
}

struct CategoryRowView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRowView(categories: categoryData[3])
            .previewLayout(.sizeThatFits)
    }
}
