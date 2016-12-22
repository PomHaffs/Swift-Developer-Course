//
//  ViewController.swift
//  AdvancedSegues
//
//  Created by Tomas-William Haffenden on 22/12/16.
//  Copyright © 2016 PomHaffs. All rights reserved.
//

import UIKit

//This is avaliable everywhere BUT is dangerous as a result
let globalVarible = "Tomas"

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //allows for us to pass information from cell that is pressed
    var activeRow = 0
    
    
    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = "Row \(indexPath.row)"
        
        return cell
        
    }

    //This run if a cell is tapped on from table view NEEED identifier
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        activeRow = indexPath.row
        
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toSecondVC" {
            
            let secondVC = segue.destination as! SecondVC
            //passing info to secondVC
            secondVC.activeRow = activeRow
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

