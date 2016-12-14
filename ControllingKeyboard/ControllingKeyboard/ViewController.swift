//
//  ViewController.swift
//  ControllingKeyboard
//
//  Created by Tomas-William Haffenden on 14/12/16.
//  Copyright © 2016 PomHaffs. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Closes down keyboard when a touch occurs outside of that area
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //shut down keyboard on return press
        textField.resignFirstResponder()
        
        return true
    }
    
}

