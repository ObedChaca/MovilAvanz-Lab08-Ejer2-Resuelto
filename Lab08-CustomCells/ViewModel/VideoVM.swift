import UIKit

class VideoVM{
    
    func createArray() -> [Video] {
        
        var tempVideos: [Video] = []
        
        let video1 = Video(image: UIImage(named: "java")!, title: "Java")
        let video2 = Video(image: UIImage(named: "swift")!, title: "Swift")
        let video3 = Video(image: UIImage(named: "c")!, title: "C#")
        let video4 = Video(image: UIImage(named: "javascript")!, title: "JavaScript")
        let video5 = Video(image: UIImage(named: "python")!, title: "Python")
        
        tempVideos.append(video1)
        tempVideos.append(video2)
        tempVideos.append(video3)
        tempVideos.append(video4)
        tempVideos.append(video5)
        
        return tempVideos
    }
    
}
