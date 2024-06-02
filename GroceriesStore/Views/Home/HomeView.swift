//
//  HomeView.swift
//  GroceriesStore
//
//  Created by Abhishek Yadav on 31/05/24.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        VStack{
            HStack{
                Button{
                    
                } label: {
                    Image("user")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40,height: 40)
                        .cornerRadius(100)
                }
                Spacer()
                VStack{
                    Text("Get Your Grocery In Mintues").font(.system(size: 12, weight: .semibold))
                    Text("GrocerGo.").font(.system(size: 25,weight: .bold)).foregroundColor(.primaryC)
                }
                Spacer()
                Button{
                    
                } label: {
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.white)
                }
                
            }.frame(minWidth: 0,maxWidth: .infinity).padding(.horizontal,15).padding(.vertical,15).background(VisualEffectBlur(style: .dark)).cornerRadius(50)
            ScrollView(showsIndicators: false){
                ScrollView(.horizontal,showsIndicators: false){
                    LazyHStack(spacing: 10){
//                        ForEach(0...4,id:\.self){
//                            index in
//
//                        }
                        
                        Button{
                            
                        } label: {
                            HStack{
                                VStack{
                                    Image("cat1").resizable().scaledToFit().frame(width: 22,height: 22)
                                }.padding(15).background(Color(hex: "000")).cornerRadius(100)

                                Text("Fruits & Vegetables").font(.system(size: 16,weight: .semibold)).foregroundColor(.white).multilineTextAlignment(.leading)
                            }.frame(width: 200,alignment: .leading).padding(10).background(Color(hex: "111")).cornerRadius(100)
                        }
                        
                        Button{
                            
                        } label: {
                            HStack{
                                VStack{
                                    Image("cat2").resizable().scaledToFit().frame(width: 22,height: 22)
                                }.padding(15).background(Color(hex: "000")).cornerRadius(100)

                                Text("Foodgrains, Oil & Masala").font(.system(size: 16,weight: .semibold)).foregroundColor(.white).multilineTextAlignment(.leading)
                            }.frame(width: 200,alignment: .leading).padding(10).background(Color(hex: "111")).cornerRadius(100)
                        }
                    }
                }
                Spacer().frame(height: 30)
                CarouselView(items: [
                           CarouselItem(image: "banner1"),
                           CarouselItem(image: "banner2"),
                           CarouselItem(image: "banner3"),
                           CarouselItem(image: "banner4")
                ]).background(VisualEffectBlur(style: .dark))
                Spacer().frame(height: 30)
                
                VStack{
                    SectionTitleAll(sectionTitle: "Today's deals")
                    ScrollView(.horizontal,showsIndicators: false){
                        LazyHStack(spacing: 20){
//                            ForEach(0...5,id:\.self){
//                                index in
//                                ProductCell(
//                                pName : "Apple",
//                                 pImage: "papple",
//                                 Pdescription : "6pcs in bucket",
//                                 isSale : true,
//                                 saleTag : "20% OFF"
//                                )
//
//                            }
                            
                            ProductCell(
                            pName : "Apple",
                             pImage: "papple",
                             Pdescription : "6pcs in bucket",
                             isSale : true,
                             saleTag : "20% OFF"
                            )
                            
                            
                            ProductCell(
                            pName : "Primera",
                             pImage: "facewash",
                             Pdescription : "Facewash Bottle",
                            isSale : true,
                            saleTag : "5% OFF"
                            )

                            ProductCell(
                            pName : "Gomgom Vegetable",
                             pImage: "salade",
                             Pdescription : "1 kg, 1 piece",
                            isSale : true,
                            saleTag : "7% OFF"
                            )

                            ProductCell(
                            pName : "Artisan Ramen",
                             pImage: "ramen",
                             Pdescription : "spicy flavor, 4 pieces",
                            isSale : true,
                            saleTag : "10% OFF"
                            )
                        }
                    }
                    
                }
                Spacer().frame(height: 30)
                
                VStack{
                    SectionTitleAll(sectionTitle: "Shop Vegetables")
                    ScrollView(.horizontal,showsIndicators: false){
                        LazyHStack(spacing: 20){
//                            ForEach(0...5,id:\.self){
//                                index in
//                                ProductCell(
//                                pName : "Apple",
//                                 pImage: "papple",
//                                 Pdescription : "6pcs in bucket",
//                                 isSale : true,
//                                 saleTag : "20% OFF"
//                                )
//
//                            }
                            
                            ProductCell(
                            pName : "Apple",
                             pImage: "papple",
                             Pdescription : "6pcs in bucket",
                             isSale : true,
                             saleTag : "20% OFF"
                            )
                            
                            
                            ProductCell(
                            pName : "Primera",
                             pImage: "facewash",
                             Pdescription : "Facewash Bottle",
                            isSale : true,
                            saleTag : "5% OFF"
                            )

                            ProductCell(
                            pName : "Gomgom Vegetable",
                             pImage: "salade",
                             Pdescription : "1 kg, 1 piece",
                            isSale : true,
                            saleTag : "7% OFF"
                            )

                            ProductCell(
                            pName : "Artisan Ramen",
                             pImage: "ramen",
                             Pdescription : "spicy flavor, 4 pieces",
                            isSale : true,
                            saleTag : "10% OFF"
                            )
                        }
                    }
                    
                }
                Spacer().frame(height: 140)
                

                
            }.padding(.horizontal,10).padding(.top,20)
            
        }.padding(.horizontal,10).padding(.top, 40).ignoresSafeArea()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().preferredColorScheme(.dark)
    }
}
