//
//  LoginView.swift
//  GroceriesStore
//
//  Created by Abhishek Yadav on 31/05/24.
//

import SwiftUI

struct LoginView: View {
    @Environment(\.presentationMode) var mode : Binding<PresentationMode>
    @StateObject var loginViewModel = ViewMainModel.shared
    
    var body: some View {
        ZStack{
            Image("Login")
                .resizable()
                .scaledToFill()
                .brightness(-0.2)
                .frame(width: .screenWidth, height: .screenHeight)
                .ignoresSafeArea()
            
            VStack{}
                .frame(width: .screenWidth, height: .screenHeight)
                .background(VisualEffectBlur(style: .dark))
                .opacity(0.3)
                .ignoresSafeArea()
            
            VStack(){
                
                Text("Login")
                    .font(.system(size: 40, weight: .bold))
                    .foregroundColor(.white)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                
                Text("GrocerGo: Start Shopping.")
                    .font(.system(size: 25, weight: .bold))
                    .foregroundColor(.primaryC)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, .screenWidth * 0.1)
                
                VStack{
                    Text("Username:")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.white)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom, 5)
                    
                    LineTextFeild(
                        placeholder: "Enter Your Email Or Username",
                        keyboardType: .emailAddress,
                        text: $loginViewModel.textEmail)
                }
                .padding(.bottom, 20)
                
                VStack{
                    Text("Password:")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.white)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom, 5)
                    
                    LineSecureField(
                        placeholder: "Enter Your Password", text: $loginViewModel.textPassword,
                        isPassword: $loginViewModel.isShowPassword)
                }
                .padding(.bottom, 20)
                
                Button{
                    
                } label: {
                    Text("Forget Password?").foregroundColor(.white)
                }.frame(minWidth: 0, maxWidth: .infinity
                        , alignment: .trailing).padding(.bottom, .screenWidth * 0.1)
                
                Button{
                    print("hello")
                } label: {
                    NavigationLink(destination:  MainView() ){
                        RoundedButton(title: "Login")
                        
                    }
                }.padding(.bottom,20)
                
                VStack{
                    Text("Don't have an account yet?").foregroundColor(.white).font(.system(size: 16,weight: .semibold)).padding(.bottom,1)
                    Button{
                        
                    } label: {
                        NavigationLink(destination: SignUpView() ){
                            Text("Register Now").underline().foregroundColor(.primaryC).font(.system(size: 16,weight: .semibold))
                        }
                    }
                }
                
                Spacer()
            }
            .padding(.top, .topInsets + 100)
            .padding(.horizontal, 20)
            .padding(.bottom, .bottomInsets)
            .frame(width: .screenWidth, height: .screenHeight)
            .ignoresSafeArea()
            
            VStack{
                HStack{
                    Button{
                        mode.wrappedValue.dismiss()
                    } label: {
                        Image("backWhite")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                    }
                    Spacer()
                }
                Spacer()
            }
            .padding(.top, .topInsets)
            .padding(.horizontal, 20)
            .ignoresSafeArea()
        }
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            LoginView()
        }
    }
}
