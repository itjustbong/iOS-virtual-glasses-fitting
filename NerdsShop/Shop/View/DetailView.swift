//
//  DetailView.swift
//  Shop
//
//  Created by Balaji on 05/10/20.
//

import SwiftUI

struct DetailView: View {
    
    @Binding var glassesData : GlassesModel!
    @Binding var show: Bool
    var animation: Namespace.ID
    // Initialization....
    @State var selectedColor = Color.red
    @State var count = 0
    @State var isSmallDevice = UIScreen.main.bounds.height < 750
    
    var body: some View {
        VStack{
            HStack{
                VStack(alignment: .leading,spacing: 5){
                    Button(action: {
                        withAnimation(.easeOut){show.toggle()}
                    }) {
                        Image(systemName: "chevron.left")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    
                    Text("Glasses for now")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.top)
                    
                    Text(glassesData.title)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                }
                
                Spacer(minLength: 0)
                
                Button(action: {}) {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.white)
                }
            }
            .padding()
            .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            HStack(spacing: 10){
                Spacer(minLength: 100)
                Image(glassesData.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .matchedGeometryEffect(id: glassesData.image, in: animation)
            }
            .padding()
            .padding(.top,10)
            .zIndex(1)
            .padding(.bottom, 35)
            
            VStack{
                ScrollView(isSmallDevice ? .vertical : .init(), showsIndicators: false) {
                    HStack{
                        //                        VStack(alignment: .leading, spacing: 8) {
                        //
                        //                            Text("Color")
                        //                                .fontWeight(.bold)
                        //                                .foregroundColor(.gray)
                        //
                        //                            HStack(spacing: 15){
                        //                                ColorButton(color: Color(bagData.image), selectedColor: $selectedColor)
                        //                                ColorButton(color: Color.yellow, selectedColor: $selectedColor)
                        //                                ColorButton(color: Color.green, selectedColor: $selectedColor)
                        //                            }
                        //                        }
                        
                        Spacer(minLength: 0)
                        
                        HStack(spacing: 20){
                            VStack(alignment: .leading, spacing: 6) {
                                Text("Price")
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                
                                Text(glassesData.price)
                                    .font(.largeTitle)
                                    .fontWeight(.heavy)
                                    .foregroundColor(.black)
                            }
                             
                            Spacer()
                            
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Eye to Eye")
                                    .fontWeight(.semibold)
                                    .foregroundColor(.black)
                                Text("12 cm")
                                    .fontWeight(.heavy)
                                    .foregroundColor(.black)
                            }
                            
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Height")
                                    .fontWeight(.semibold)
                                    .foregroundColor(.black)
                                Text("12 cm")
                                    .fontWeight(.heavy)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                    .padding(.horizontal)
                    
                    Text(glassesData.description)
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                        .padding()
                    
                    HStack(spacing: 20){
                        Button(action: {}) {
                            Text("See More Info On Web")
                                .font(.subheadline)
                                .fontWeight(.bold)
                                .padding(.vertical)
                                .foregroundColor(Color(UIColor(glassesData.bgColor)))
                                .clipShape(Capsule())
                        }
                        .padding(.top)
                        
//                        Button(action: {
//                            if count > 0{count -= 1}
//                        }) {
//
//                            Image(systemName: "minus")
//                                .font(.title2)
//                                .foregroundColor(.gray)
//                                .frame(width: 35, height: 35)
//                                .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray,lineWidth: 1))
//                        }
//
//                        Text("\(count)")
//                            .font(.title2)
//
//                        Button(action: {count += 1}) {
//                            Image(systemName: "plus")
//                                .font(.title2)
//                                .foregroundColor(.gray)
//                                .frame(width: 35, height: 35)
//                                .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray,lineWidth: 1))
//                        }
                        
                        Spacer()
                        
                        Button(action: {}) {
                            Image(systemName: "suit.heart.fill")
                                .font(.title2)
                                .foregroundColor(.white)
                                .padding(10)
                                .background(Color.red)
                                .clipShape(Circle())
                        }
                    }
                    .padding(.horizontal)
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {}) {
                        Text("TRY NOW")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.vertical)
                            .frame(width: UIScreen.main.bounds.width - 30)
                            .background(Color(UIColor(glassesData.bgColor)))
                            .clipShape(Capsule())
                    }
                    .padding(.top)
                    .padding(.bottom,UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 15 : 0)
                }
                .padding(.top,isSmallDevice ? 0 : -20)
            }
            .background(
                Color.white
                    .clipShape(CustomCorner())
                    .padding(.top,isSmallDevice ? -60 : -100)
            )
            .zIndex(0)
        }
        .background(Color(UIColor(glassesData.bgColor)).ignoresSafeArea(.all, edges: .top))
        .background(Color.white.ignoresSafeArea(.all, edges: .bottom))
        .onAppear {
            // First Color Is Image Or Bag Color...
            selectedColor = Color(glassesData.image)
        }
    }
}

