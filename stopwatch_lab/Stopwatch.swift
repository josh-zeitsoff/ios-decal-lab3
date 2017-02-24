//
//  Stopwatch.swift
//  stopwatch_lab
//
//  Created by Joshua Zeitsoff on 2/23/17.
//  Copyright © 2017 Joshua Zeitsoff. All rights reserved.
//

import UIKit

class Stopwatch: NSObject {
    
    var startDate : NSDate?
    var going = true
    
    func start() {
        startDate = NSDate()
    
    }
    
    var time : TimeInterval {
        if let startDate = self.startDate {
            return -startDate.timeIntervalSinceNow;
        }
        return 0
        
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
