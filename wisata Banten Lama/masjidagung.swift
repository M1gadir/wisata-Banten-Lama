//
//  masjidagung.swift
//  wisata Banten Lama
//
//  Created by My Macbook on 30/10/18.
//  Copyright © 2018 TB. All rights reserved.
//

import UIKit
import WebKit

class masjidagung: UIViewController {
    @IBOutlet weak var IDNW: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let idn = "https://idn.sch.id/"
        IDNW.load(URLRequest(url: URL(string: idn)!))
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
