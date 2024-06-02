//
//  ProductCell.swift
//  GroceriesStore
//
//  Created by Abhishek Yadav on 02/06/24.
//

import SwiftUI

struct ProductCell: View {
    @State var pName : String = "Apple"
    @State var pImage : String = "papple"
    @State var Pdescription : String = "6 pcs"
    @State var isSale : Bool = false
    @State var saleTag : String = "20% OFF"
    
    var didAddToCart : (() -> ())?
    var body: some View {
        ZStack{
            VStack{
                VStack{
                    Image(pImage).resizable().scaledToFill().brightness(-0.1).frame(minWidth: 0,maxWidth: .infinity).clipped()
                }
                .frame(width: 150,height: 100)
                HStack{
                    VStack(alignment: .leading){
                        Text(pName).font(.system(size: 16,weight: .semibold))
                        Text(Pdescription).font(.system(size: 12,weight: .medium)).foregroundColor(.secondaryTextC).lineSpacing(10)

                        Spacer()
                        HStack{
                            Text("$20.00")
                        }.padding(.bottom,5).font(.system(size: 18,weight: .bold)).foregroundColor(.textSubtitleC)
                    }
                    
                    Spacer()
                }
                .padding(.all,10)
                .frame(width: 150,height: 90)
                .background(Color(hex: "111"))
                
            }.frame(width: 150, height: 190).background(Color(hex: "111")).cornerRadius(10)
            VStack{
                Spacer()
                HStack{
                    Button{
                        didAddToCart?()
                    } label: {
                        Image(systemName: "basket.fill").resizable().scaledToFit().foregroundColor(.primaryC).frame(width: 25,height: 25)
                    }
                }.frame(minWidth: 0,maxWidth: .infinity,alignment: .trailing).padding(.vertical,14).padding(.horizontal,10)
            }.frame(width: 150, height: 190)
            VStack{
                HStack{
                    HStack{
                        if(isSale){
                            Text(saleTag).font(.system(size: 10,weight: .bold))
                        }
                        
                    }.padding(.horizontal,5).padding(.vertical,2).background(Color.red).cornerRadius(100)
                }
                .frame(minWidth: 0,maxWidth: .infinity,alignment: .leading)
                Spacer()
            }.padding(.all,5).frame(width: 150, height: 190)
        }
    }
}

struct ProductCell_Previews: PreviewProvider {
    static var previews: some View {
        ProductCell(
            pName : "Apple",
             pImage: "papple",
             Pdescription : "6pcs",
             isSale : true,
             saleTag : "20% OFF"
        ).preferredColorScheme(.dark)
    }
}
