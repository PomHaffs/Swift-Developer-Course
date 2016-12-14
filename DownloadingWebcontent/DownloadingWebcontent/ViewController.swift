//
//  ViewController.swift
//  DownloadingWebcontent
//
//  Created by Tomas-William Haffenden on 15/12/16.
//  Copyright © 2016 PomHaffs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //define static URL location
        let url = URL(string: "http://www.stackoverflow.com")!
        //call load request
        webView.loadRequest(URLRequest(url: url))
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

