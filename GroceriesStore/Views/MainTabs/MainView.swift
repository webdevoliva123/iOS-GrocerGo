//  MainView.swift
//  GroceriesStore
//
//  Created by Abhishek Yadav on 31/05/24.
//

import SwiftUI

struct MainView: View {
    @StateObject var homeVM = ViewHomeModel.shared

    var body: some View {
        ZStack {
            // Main TabView
            TabView(selection: $homeVM.selectTab) {
                HomeView().tag(0)
                ExploreView().tag(1)
                ExploreView().tag(2)
                ExploreView().tag(3)
                ExploreView().tag(4)
            }
            .onAppear {
                UIScrollView.appearance().isScrollEnabled = false
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .onChange(of: homeVM.selectTab) { newValue in
                debugPrint("Selected Tab: \(newValue)")
            }
            
            // Bottom Tab Bar
            VStack{
                Spacer()
                HStack {
                    TabButton(title: "Home",icon: "house.fill", isSelected: homeVM.selectTab == 0 ){
                        DispatchQueue.main.async {
                            withAnimation{
                                homeVM.selectTab = 0
                            }
                        }
                        
                    }
                    
                    TabButton(title: "Explore",icon: "magnifyingglass", isSelected: homeVM.selectTab == 1 ){
                        DispatchQueue.main.async {
                            withAnimation{
                                homeVM.selectTab = 1
                            }
                        }
                    }
                    
                    TabButton(title: "Cart",icon: "bag", isSelected: homeVM.selectTab == 2 ){
                        DispatchQueue.main.async {
                            withAnimation{
                                homeVM.selectTab = 2
                            }
                        }
                    }
                    
                    TabButton(title: "Favourite",icon: "heart", isSelected: homeVM.selectTab == 3 ){
                        DispatchQueue.main.async {
                            withAnimation{
                                homeVM.selectTab = 3
                            }
                        }
                    }
                    
                    TabButton(title: "Account",icon: "person", isSelected: homeVM.selectTab == 4 ){
                        DispatchQueue.main.async {
                            withAnimation{
                                homeVM.selectTab = 4
                            }
                        }
                    }
                   
                }.padding(.horizontal,20).padding(.vertical).background(VisualEffectBlur(style: .dark)).cornerRadius(20)
            }
        }
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .ignoresSafeArea()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView().preferredColorScheme(.dark)
    }
}
