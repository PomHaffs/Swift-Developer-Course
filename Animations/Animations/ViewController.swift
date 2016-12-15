//
//  ViewController.swift
//  Animations
//
//  Created by Tomas-William Haffenden on 15/12/16.
//  Copyright © 2016 PomHaffs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Basic start and end and the duration
    @IBAction func fadeIn(_ sender: Any) {
        
        image.alpha = 0
        
        UIView.animate(withDuration: 3, animations: {
        
            self.image.alpha = 1
            
        })
    }
    
    @IBAction func slideIn(_ sender: Any) {
        
        
        image.center = CGPoint(x: image.center.x - 500, y: image.center.y)
        
        UIView.animate(withDuration: 3, animations: {
        
        self.image.center = CGPoint(x: self.image.center.x + 500, y: self.image.center.y)
        
        })
        
    }
    
    @IBAction func grow(_ sender: Any) {
        
        image.size
    }
  
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var button: UIButton!
    
    var count = 0
    
    var isPlaying = false
    
    var timer = Timer()
    
    func animate() {
    
        image.image = UIImage(named: "frame_\(count)_delay-0.1s.gif")
        
        if count < 42 {
            count += 1
        } else {
            count = 0
        }
        
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        
        if isPlaying {
            
            button.setTitle("Play", for: [])
            timer.invalidate()
            isPlaying = false
            
        } else {
            
            button.setTitle("Paws", for: [])
            timer = Timer.scheduledTimer(timeInterval: 0.05, target: self, selector: #selector(ViewController.animate) , userInfo: nil, repeats: true)
            isPlaying = true
            
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

