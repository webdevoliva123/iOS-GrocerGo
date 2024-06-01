//
//  ViewHomeModel.swift
//  GroceriesStore
//
//  Created by Abhishek Yadav on 31/05/24.
//

import SwiftUI

class ViewHomeModel : ObservableObject{
    static var shared : ViewHomeModel = ViewHomeModel()
    
    @Published var selectTab : Int = 0
}
