import SwiftUI
import AVFoundation

struct VideoPlayerView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIViewController {
        return VideoPlayerViewController()
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        // No update needed for now
    }
}

class VideoPlayerViewController: UIViewController {
    var player: AVPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let url = Bundle.main.url(forResource: "welcome", withExtension: "mp4") else {
            print("Video file not found")
            return
        }

        player = AVPlayer(url: url)
        player.isMuted = true
        player.actionAtItemEnd = .none

        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = view.bounds
        playerLayer.videoGravity = .resizeAspectFill

        view.layer.addSublayer(playerLayer)

        NotificationCenter.default.addObserver(self, selector: #selector(restartVideo), name: .AVPlayerItemDidPlayToEndTime, object: player.currentItem)

        player.play()
    }

    @objc private func restartVideo() {
        player.seek(to: .zero)
        player.play()
    }

    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}
