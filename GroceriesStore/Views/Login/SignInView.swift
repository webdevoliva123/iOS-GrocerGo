//
//  SignInView.swift
//  GroceriesStore
//
//  Created by Abhishek Yadav on 27/05/24.
//

import SwiftUI

struct SignInView: View {
    @State var mobileNumber : String = ""
    var body: some View {
        ZStack{
            Image("SignIn")
                .resizable()
                .scaledToFill()
                .brightness(-0.1)
                .ignoresSafeArea()
            
            ScrollView{
                
                VStack(alignment: .leading){
                    VStack(alignment:.leading ){
                        Text("Get Your Grocery From")
                            .font(.system(size: 32, weight: .bold))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.leading)
                        
                        HStack{
                            Text("From")
                                .font(.system(size: 30, weight: .bold))
                                .foregroundColor(.white)
                                .multilineTextAlignment(.leading)
                            
                            Text("GrocerGo.")
                                .font(.system(size:34, weight: .heavy))
                                .foregroundColor(.primaryC)
                                .multilineTextAlignment(.leading)
                        }
                    }.padding(.bottom,25)
                    
                    VStack{
                        HStack{
                            Button{
                                print("hello")
                            } label: {
                                Text("+91")
                                    .font(.system(size:18, weight: .medium))
                                    .foregroundColor(.primaryC)
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal, 10)
                            }
                            TextField("", text: $mobileNumber)
                                .modifier(PlaceholderStyle(showPlaceholder: mobileNumber.isEmpty, placeholder: "Enter Mobile Number", color: .gray))
                                .frame(minWidth: 0,maxWidth: .infinity).foregroundColor(.white)
                            
                        }.frame(minWidth: 0,maxWidth: .infinity,minHeight: 50,maxHeight: 50)
                        Divider().frame(height: 2).background(Color.white)
                    }.background(VisualEffectBlur(style: .dark)).padding(.bottom,25)
                    
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
                
                   
                }
                    
            }
            .padding(.all, 20)
            .frame(width: .screenWidth, alignment: .leading)
            .padding(.top, .topInsets + .screenWidth * 0.7)
            
            
            
        }.navigationTitle("")
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
