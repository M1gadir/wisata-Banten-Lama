//
//  ViewController.swift
//  wisata Banten Lama
//
//  Created by My Macbook on 29/10/18.
//  Copyright © 2018 TB. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var btdes: UIButton!
    @IBOutlet weak var btnmap: UIButton!
    @IBOutlet weak var vid: UIButton!
    @IBOutlet weak var aboutap: UIButton!
    @IBOutlet weak var devel: UIButton!
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       label.layer.cornerRadius = 10.0
        label.layer.masksToBounds = true
        btdes.layer.cornerRadius = 10.0
        btdes.layer.masksToBounds = true
        btnmap.layer.cornerRadius = 10.0
        btnmap.layer.masksToBounds = true
        aboutap.layer.cornerRadius = 10.0
        aboutap.layer.masksToBounds = true
        devel.layer.cornerRadius = 10.0
        devel.layer.masksToBounds = true
        vid.layer.cornerRadius = 10.0
        vid.layer.masksToBounds = true

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func vidban(_ sender: UIButton)
    {
        if let path = Bundle.main.path(forResource: "Vidban", ofType: "mp4")
        {
            let video = AVPlayer(url: URL(fileURLWithPath: path))
            let videoPlayer = AVPlayerViewController()
            videoPlayer.player = video
            present(videoPlayer, animated: true) {
                video.play()
            }
        }
    }
    
    

}

