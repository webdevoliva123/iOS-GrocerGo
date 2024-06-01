//
//  TabButton.swift
//  GroceriesStore
//
//  Created by Abhishek Yadav on 01/06/24.
//

import SwiftUI

struct TabButton: View {
    
   @State var title : String =  "tab"
    @State var icon : String = ""
    var isSelected : Bool = true
    var didSelected : (() -> ())
    
    var body: some View {
        Button{
            print("Taped this button")
            
             didSelected()
        } label :{
            VStack{
                VStack {
                    Image(systemName: icon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                        .foregroundColor(isSelected ? .primaryC : .white)
                }
                .frame(width: 50, height: 50)
                .background(
                    Group {
                        if isSelected {
                            VisualEffectBlur(style: .dark)
                        } else {
                            Color.black.opacity(0)
                        }
                    }
                )
                .cornerRadius(100)
                Text(isSelected  ? title : "").font(.system(size: 14)).foregroundColor(.white)
            }.frame(minWidth: 0,maxWidth: .infinity)
        }

    }
}

struct TabButton_Previews: PreviewProvider {
    static var previews: some View {
        TabButton{
            print("hello")
        }
    }
}
