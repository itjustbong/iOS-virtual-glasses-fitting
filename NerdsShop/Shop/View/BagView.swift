//
//  BagView.swift
//  Shop
//
//  Created by Balaji on 05/10/20.
//

import SwiftUI

struct BagView: View {
    
    var glassesData : GlassesModel
    var animation : Namespace.ID
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 6) {
            ZStack{
                // both image and color name are same....
                Color(UIColor(glassesData.bgColor))
                    .cornerRadius(15)
                Color(glassesData.image)
                    .cornerRadius(15)
            
                Image(glassesData.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(20)
                    .frame(height: 180)
                    .matchedGeometryEffect(id: glassesData.image, in: animation)
            }
            
            Text(glassesData.title)
                .fontWeight(.heavy)
                .foregroundColor(.gray)
            
            Text(glassesData.price)
                .fontWeight(.heavy)
                .foregroundColor(.black)
        }
    }
}

