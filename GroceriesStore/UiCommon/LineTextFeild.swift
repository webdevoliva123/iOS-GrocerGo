//
//  LineTextFeild.swift
//  GroceriesStore
//
//  Created by Abhishek Yadav on 31/05/24.
//

import SwiftUI

struct LineTextFeild: View {
    @State var title : String = "Title"
    @State var placeholder :  String = "Placeholder"
    @State var keyboardType : UIKeyboardType = .default
    @Binding var text : String;
    
    var body: some View {
        VStack{
       
               
        
                TextField("", text:$text)
                    .keyboardType(keyboardType)
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                    .modifier(PlaceholderStyle(showPlaceholder: text.isEmpty, placeholder: placeholder, color: .textSubtitleC))
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)
                    .padding(.top, 15)
                    .padding(.bottom, 10)
            
            
            
            Rectangle()
                .frame(height: 2)
                .foregroundColor(.white)
                .padding(.vertical, 0)
        }
        .background(VisualEffectBlur(style: .dark))
    }
}

struct LineSecureField: View {
    
    @State var title : String = "Title"
    @State var placeholder :  String = "Placeholder"
    @Binding var text : String;
    @Binding var isPassword : Bool
    
    var body: some View {
        VStack{
            if(isPassword){
                SecureField("", text: $text)
                    .autocorrectionDisabled()
                    .autocapitalization(.none)
                    .modifier(PlaceholderStyle(showPlaceholder: text.isEmpty, placeholder: placeholder, color: .textSubtitleC))
                    .modifier(showHideEyeModifier(showButtom: $isPassword))
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)
                    .padding(.top, 15)
                    .padding(.bottom, 10)
                    
            }else{
                TextField(title, text:$text)
                    .autocorrectionDisabled()
                    .autocapitalization(.none)
                    .modifier(PlaceholderStyle(showPlaceholder: text.isEmpty, placeholder: placeholder, color: .textSubtitleC))
                    .modifier(showHideEyeModifier(showButtom: $isPassword))
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)
                    .padding(.top, 15)
                    .padding(.bottom, 10)
                    
            }
            
            
            Rectangle()
                .frame(height: 2)
                .foregroundColor(.white)
                .padding(.vertical, 0)
        }
        .background(VisualEffectBlur(style: .dark))
    }
}

struct LineTextFeild_Previews: PreviewProvider {
    @State static var text : String = ""
    static var previews: some View {
        LineTextFeild(placeholder: "hello", text: $text).preferredColorScheme(.dark)
    }
}


