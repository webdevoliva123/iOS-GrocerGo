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
            ScrollView{
                
                CarouselView(items: [
                           CarouselItem(image: "bannerz2"),
                           CarouselItem(image: "banner1"),
                           CarouselItem(image: "banner2"),
                           CarouselItem(image: "banner3")
                ]).background(VisualEffectBlur(style: .dark))
                
//                Image("banner").resizable().scaledToFill().frame(height: 100 )
//                Image("banner").resizable().scaledToFill().frame(height: 100 )
                
            }.padding(.horizontal,10).padding(.vertical,20)
            
        }.padding(.horizontal,10).padding(.top)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().preferredColorScheme(.dark)
    }
}
