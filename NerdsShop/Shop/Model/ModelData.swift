//
//  ModelData.swift
//  Shop
//
//  Created by Balaji on 05/10/20.
//

import SwiftUI

// Model Data...
struct GlassesModel: Identifiable {
    var id = UUID().uuidString
    var image : String
    var title: String
    var price: String
    var bgColor: Color
    var description: String
}

var glasses = [
    GlassesModel(image: "manjoo", title: "Manjoo", price: "$145", bgColor: .gGreen, description: "It is made of the highest quality acetate from Italian Mazzucchelli, a luxury brand, rather than low-cost TR material. It features vivid colors and textures, and is an eco-friendly material that is safe for the human body."),
    GlassesModel(image: "macaron", title: "Macaron", price: "$100", bgColor: .gDarkGreen, description: "It is made of the highest quality acetate from Italian Mazzucchelli, a luxury brand, rather than low-cost TR material. It features vivid colors and textures, and is an eco-friendly material that is safe for the human body."),
    GlassesModel(image: "dante", title: "Dante", price: "$90", bgColor: .gBlue, description: "It is made of the highest quality acetate from Italian Mazzucchelli, a luxury brand, rather than low-cost TR material. It features vivid colors and textures, and is an eco-friendly material that is safe for the human body."),
    GlassesModel(image: "raino", title: "Raino", price: "$175", bgColor: .gPink, description: "It is made of the highest quality acetate from Italian Mazzucchelli, a luxury brand, rather than low-cost TR material. It features vivid colors and textures, and is an eco-friendly material that is safe for the human body."),
    GlassesModel(image: "warren", title: "Warren", price: "$119", bgColor: .gBio, description: "It is made of the highest quality acetate from Italian Mazzucchelli, a luxury brand, rather than low-cost TR material. It features vivid colors and textures, and is an eco-friendly material that is safe for the human body."),
    GlassesModel(image: "ding", title: "Ding", price: "$120", bgColor: .gDarkGreen, description: "It is made of the highest quality acetate from Italian Mazzucchelli, a luxury brand, rather than low-cost TR material. It features vivid colors and textures, and is an eco-friendly material that is safe for the human body.")
]

// For Top SCrolling Tab Buttons....
var scroll_Tabs = ["All", "Eyeglasses", "Sunglasses"]
