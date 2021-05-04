import UIKit

class VideoListScreen: UIViewController {
    
    var videos: [Video] = VideoVM().createArray()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }

}

extension VideoListScreen: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell")!
        let video = videos[indexPath.row]
        
        cell.textLabel?.text = video.title
        cell.imageView?.image = video.image
        return cell
    }
}
