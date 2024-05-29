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
            }
            content
                .foregroundColor(.white) // Ensure your TextField text color is white
        }
    }
}
