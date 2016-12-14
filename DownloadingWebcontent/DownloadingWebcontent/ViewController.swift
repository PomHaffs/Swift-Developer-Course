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
        //let url = URL(string: "http://www.stackoverflow.com")!
        
        //call load request to load given page
        //webView.loadRequest(URLRequest(url: url))
        
        //baseURL is optional
        //webView.loadHTMLString("<h1>Hello Monkey</h1>", baseURL: nil)
        
                        //SCRAPING - IMPORTANT look at p.List!!!!
        if let url = URL(string: "http://stackoverflow.com") {
            
            let request = NSMutableURLRequest(url: url)
        
            let task = URLSession.shared.dataTask(with: request as URLRequest) {
                //3 things we get back - data, responce, error
                data, response, error in
                
                if error != nil {
                    print(error as Any)
                } else {
                    if let unwrappedData = data {
                        //UTF8 is standard encoding
                        let dataString = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
                        
                        print(dataString as Any)
                        
                        DispatchQueue.main.sync(execute: {
                        
                            //Update UI would go here AFTER stuff has loaded
                            
                        })
                        
                    }
                }
                
            }
            //this is making it RUN or nothing happensd
            task.resume()
        }
        //This is async so will run as data is queued and loading
        print("printing")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

