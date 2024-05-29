//
//  RoundedButton.swift
//  GroceriesStore
//
//  Created by Abhishek Yadav on 27/05/24.
//

import SwiftUI

struct RoundedButton: View {
    @State var title: String = "Title"

    var body: some View {
      
        Text(title)
            .font(.system(size: 18, weight: .semibold))
            .foregroundColor(.black)
            .multilineTextAlignment(.center)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 60)
            .background(Color.primaryC)
            .cornerRadius(10)
    }
}

struct RoundedButton_Previews: PreviewProvider {
    static var previews: some View {
        RoundedButton( ).preferredColorScheme(.dark).padding(20)
    }
}
