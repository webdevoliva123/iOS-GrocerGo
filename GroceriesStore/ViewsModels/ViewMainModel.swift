//
//  ViewMainModel.swift
//  GroceriesStore
//
//  Created by Abhishek Yadav on 31/05/24.
//

import SwiftUI

class ViewMainModel :  ObservableObject{
    static var shared : ViewMainModel = ViewMainModel()
    
    @Published  var textEmail : String = ""
    @Published  var textPassword : String = ""
    @Published  var isShowPassword : Bool = true
    
}
