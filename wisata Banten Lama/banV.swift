//
//  banV.swift
//  wisata Banten Lama
//
//  Created by My Macbook on 03/11/18.
//  Copyright © 2018 TB. All rights reserved.
//

import UIKit
import WebKit

class banV: UIViewController {
 @IBOutlet weak var ban: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let banten = "https://id.wikipedia.org/wiki/Kota_Kuno_Banten"
        ban.load(URLRequest(url: URL(string: banten)!))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
