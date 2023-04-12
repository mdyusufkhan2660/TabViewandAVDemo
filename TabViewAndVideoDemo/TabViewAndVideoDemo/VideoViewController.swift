import UIKit
import AVFoundation
import AVKit

class VideoViewController: UIViewController {
    
    @IBOutlet weak var myVideoView: UIView!
    var player: AVPlayer!
    var avpController = AVPlayerViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startVideo()
    }
    func startVideo(){
        let url = URL(string: "https://firebasestorage.googleapis.com/v0/b/gameofchats-762ca.appspot.com/o/message_movies%2F12323439-9729-4941-BA07-2BAE970967C7.mov?alt=media&token=3e37a093-3bc8-410f-84d3-38332af9c726")
        player = AVPlayer(url: url!)
        avpController.player = player
        avpController.view.frame = myVideoView.bounds
        self.myVideoView.addSubview(avpController.view)
        player.play()
    }

}
