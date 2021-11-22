//
//  CategoryModel.swift
//  exemplar
//
//  Created by Roberto I. Merizalde on 28/10/21.
//

import SwiftUI

// MARK: - CATEGORY MODEL

struct Category: Identifiable {
    var id = UUID()
    var name: String
    var image: UIImage?
    var imageName: String
}
