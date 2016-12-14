//
//  ViewController.swift
//  PerminantDataStorage
//
//  Created by Tomas-William Haffenden on 14/12/16.
//  Copyright © 2016 PomHaffs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputField: UITextField!
    
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBAction func buttonPressed(_ sender: Any) {
        
        let input = inputField.text
        
        UserDefaults.standard.set(input, forKey: "number")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let num = UserDefaults.standard.object(forKey: "number")
        
        if let userNumber = num as? String {
            displayLabel.text = userNumber
        } else {
            displayLabel.text = "Elephant has nothing to remember yet!"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

                        //Lesson Bits

//        //SETTER - stores perminatly after one run
//        //UserDefaults.standard.set("Tomas", forKey: "name")
//        //GETTER
//        let nameObject = UserDefaults.standard.object(forKey: "name")
//
//        ///only runs IF nameObject is a string
//        if let name = nameObject as? String {
//            print(name)
//        }
//
//        let array = [1, 2, 3, 4]
//        UserDefaults.standard.set(array, forKey: "array")
//
//        let arrayObject = UserDefaults.standard.object(forKey: "array")
//        //could also use 'as? Array<any>'
//        if let arr = arrayObject as? NSArray {
//            print(arr)
//        }

