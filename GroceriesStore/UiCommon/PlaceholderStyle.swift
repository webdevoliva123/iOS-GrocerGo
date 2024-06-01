import SwiftUI

struct PlaceholderStyle: ViewModifier {
    var showPlaceholder: Bool
    var placeholder: String
    var color: Color
    
    func body(content: Content) -> some View {
        ZStack(alignment: .leading) {
            if showPlaceholder {
                Text(placeholder)
                    .foregroundColor(color)
                    .font(.system(size: 14, weight: .regular))
            }
            content
                .foregroundColor(.white) // Ensure your TextField text color is white
        }
    }
}
