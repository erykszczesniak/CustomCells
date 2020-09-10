import UIKit


protocol VideoCellDelegate {
    func didTapWatchLater(title: String)
    func didTapWatchNow(url: String)
}

class VideoCell: UITableViewCell {


    @IBOutlet weak var videoImageView: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    
    
    var videoItem: Video!
    var delegate: VideoCellDelegate?
    
    
    func setVideo(video: Video) {
        videoItem = video
        videoImageView.image = video.image
        videoTitle.text = video.title
    }
    
    @IBAction func watchLaterTapped(_ sender: Any) {
        delegate?.didTapWatchLater(title: videoItem.title)
    }
    
    @IBAction func watchNowTapped(_ sender: Any ) {
        delegate?.didTapWatchNow(url: videoItem.url)
    }

}
