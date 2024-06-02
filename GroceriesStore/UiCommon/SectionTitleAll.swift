//
//  SectionTitleAll.swift
//  GroceriesStore
//
//  Created by Abhishek Yadav on 02/06/24.
//

import SwiftUI

struct SectionTitleAll: View {
    @State var sectionTitle : String = "Title"
    @State var linkTitle : String = "View All"
    var didTap : (()->())?
    var body: some View {
   
            HStack{
                Text(sectionTitle).font(.system(size: 20,weight: .bold))
                Spacer()
                Button{
                    didTap?()
                }label: {
                    HStack{
                        Text(linkTitle).foregroundColor(.primaryC).font(.system(size: 12))
                        
                    }
                    
                }
                
            }.padding(.bottom,15)
            
    }
}

struct SectionTitleAll_Previews: PreviewProvider {
    static var previews: some View {
        SectionTitleAll().preferredColorScheme(.dark)
    }
}
