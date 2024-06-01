//
//  ShowHideEyeButton.swift
//  GroceriesStore
//
//  Created by Abhishek Yadav on 31/05/24.
//

import SwiftUI

struct showHideEyeModifier : ViewModifier{
    @Binding var showButtom : Bool
    
    public func body(content: Content) -> some View {
        ZStack(alignment: .trailing){
            content
            Button {
                showButtom.toggle()
            } label: {
                Image(systemName: showButtom ? "eye.slash.fill" : "eye.fill").resizable().scaledToFit().frame(width: 20, height: 20) .foregroundColor(.white)
            }
        }
    }
}
