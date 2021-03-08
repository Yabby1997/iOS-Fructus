//
//  FruitsModel.swift
//  Fructus
//
//  Created by Seunghun Yang on 2021/03/08.
//

import SwiftUI

// MARK: - FRIUTS DATA MODEL

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
