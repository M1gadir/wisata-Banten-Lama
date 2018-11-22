//
//  borderViewController.swift
//  Adab Makan Dan  Minum
//
//  Created by My Macbook on 30/10/18.
//  Copyright © 2018 TB. All rights reserved.
//

import UIKit
import AVKit

class borderViewController: UIViewController {

    

    @IBOutlet weak var idnvid: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        idnvid.layer.cornerRadius = 20.0
        idnvid.layer.masksToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func offiwcial(_ sender: UIButton) {
        if let path = Bundle.main.path(forResource: "offiicial", ofType: "mp4")
        {
            let video = AVPlayer(url: URL(fileURLWithPath: path))
            let videoPlayer = AVPlayerViewController()
            videoPlayer.player = video
            present(videoPlayer, animated: true)
            {
                video.play()
            }
        }
    }
    

}
