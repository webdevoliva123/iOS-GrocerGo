//
//  SignUpView.swift
//  GroceriesStore
//
//  Created by Abhishek Yadav on 31/05/24.
//

import SwiftUI

struct SignUpView: View {
    @Environment(\.presentationMode) var mode : Binding<PresentationMode>
    @StateObject var loginViewModel = ViewMainModel.shared

    
    var body: some View {
        ZStack{
            Image("SignIn")
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
                
                Text("Register")
                    .font(.system(size: 40, weight: .bold))
                    .foregroundColor(.white)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                
                Text("GrocerGo: Sign Up Today.")
                    .font(.system(size: 25, weight: .bold))
                    .foregroundColor(.primaryC)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, .screenWidth * 0.1)
                
                
                VStack{
                    Text("Email:")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.white)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom, 5)
                    
                    LineTextFeild(
                        placeholder: "Enter Your Email",
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
                .padding(.bottom, 40)
                
                
                
                Button{
                    print("hello")
                } label: {
                    NavigationLink(destination:  MainView()){
                        RoundedButton(title: "Register")
                        
                    }
                }.padding(.bottom,20)
                
                VStack{
                    Text("Already have an account?").foregroundColor(.white).font(.system(size: 16,weight: .semibold)).padding(.bottom,1)
                    Button{
                        
                    }label: {
                        NavigationLink(destination: LoginView()) {
                        Text("Login Now").underline().foregroundColor(.primaryC).font(.system(size: 16,weight: .semibold))
                        }
                    }
                }.padding(.bottom, 20)
                
                VStack(alignment: .center){
                    Text("Or connect with social media")
                        .font(.system(size: 14, weight: .medium))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.bottom,20)
                    HStack(alignment: .center){
                        Image("apple").resizable().scaledToFit().frame(width: 40,height: 40).padding(.horizontal,5)
                        Image("google").resizable().scaledToFit().frame(width: 40,height: 40).padding(.horizontal,5)
                        Image("facebook").resizable().scaledToFit().frame(width: 40,height: 40).padding(.horizontal,5)
                    }
                }.frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                
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

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        SignUpView()
        }
    }
}
