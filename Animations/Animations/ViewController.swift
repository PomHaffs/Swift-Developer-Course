//
//  ViewController.swift
//  Animations
//
//  Created by Tomas-William Haffenden on 15/12/16.
//  Copyright © 2016 PomHaffs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    
    var count = 0
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        
        
        image.image = UIImage(named: "frame_\(count)_delay-0.1s.gif")
        
        if count < 42 {
            count += 1
        } else {
            count = 0
        }
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

