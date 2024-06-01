//
//  WelcomeView.swift
//  GroceriesStore
//
//  Created by Abhishek Yadav on 26/05/24.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView(){
            ZStack{
                // Background Image
//                Image("Welcome")
//                    .resizable()
//                    .scaledToFill()
//                    .brightness(-0.2)
//                    .ignoresSafeArea()
////                 Ensure the image covers the entire screen
                
                VideoPlayerView()
                .brightness(-0.4)
                .ignoresSafeArea()

                // Contentff
                VStack {
                    Spacer()
                    
                    Image("Logo2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    
                    Text("Welcome to")
                        .font(.system(size: 50, weight: .bold))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                    Text("GrocerGo.")
                        .font(.system(size: 50, weight: .bold))
                        .foregroundColor(Color.primaryC)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 5)
                    
                    Text("Get your grocery in 10 mins")
                        .font(.system(size: 16, weight: .medium))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 20)
                    
                    Spacer()
                        .frame(height: 60)
                  
                   
                        Button{
                            print("hello")
                        } label: {
                            NavigationLink(destination: LoginView()) {
                            RoundedButton(title: "Get Started")
                        }
                        
                    }
                    
                    Spacer()
                        .frame(height: 40)
                }
                .padding(.horizontal, 40)
            }
            .navigationTitle("")
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
        }

        
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            WelcomeView()
        }
    }
}
