
import SwiftUI

struct CarouselView: View {
    let items: [CarouselItem]
    @State private var currentIndex = 0
    @State private var timer: Timer?

    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $currentIndex) {
                ForEach(items.indices, id: \.self) { index in
                    Image(items[index].image)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 185)
                        .clipped()
                        .cornerRadius(15)
                        .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .onAppear {
                UIScrollView.appearance().isScrollEnabled = false
                startTimer()
            }
            .onDisappear {
                stopTimer()
            }

            HStack {
                Spacer()
                ForEach(0..<items.count, id: \.self) { index in
                    Circle()
                        .fill(index == currentIndex ? Color.primaryC : Color.white.opacity(0.5))
                        .frame(width: 8, height: 8)                        .animation(.easeInOut, value: currentIndex)
                }
                            }
            .padding(.bottom, 15).padding(.horizontal, 20)
        }
        .frame(height: 185)
        .cornerRadius(15)
        .shadow(radius: 5)
    }

    func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 3, repeats: true) { _ in
            withAnimation {
                currentIndex = (currentIndex + 1) % items.count
            }
        }
    }

    func stopTimer() {
        timer?.invalidate()
        timer = nil
    }
}

struct CarouselView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            CarouselView(items: [
                CarouselItem(image: "banner1"),
                CarouselItem(image: "banner2"),
                CarouselItem(image: "banner3")
            ])
        }
        .preferredColorScheme(.dark)
        .padding(.all, 20)
    }
}
