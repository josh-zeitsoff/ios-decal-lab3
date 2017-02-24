//
//  ViewController.swift
//  stopwatch_lab
//
//  Created by Joshua Zeitsoff on 2/23/17.
//  Copyright © 2017 Joshua Zeitsoff. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let watch = Stopwatch();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateView(timer : Timer) {
        if watch.going {
            let time = watch.time;
            let minutes = time / 60;
            let seconds = time.truncatingRemainder(dividingBy: 60);
            let milliseconds = String(format: "%.2f", time);
            timeDisplay.text = String(format: "%02d:%02d.%d", minutes, seconds, milliseconds);
        }
        else {
            timer.invalidate();
            watch.going = true;
        }
        
    
    }

    @IBOutlet weak var timeDisplay: UILabel!

    @IBAction func startButton(_ sender: Any) {
        watch.start();
        if watch.going {
                    Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.updateView), userInfo: nil,repeats: true)
            
        }
        else {
            watch.going = true;
        }
        
    }
    
    @IBAction func stopButton(_ sender: Any) {
        watch.going = false;
    }

}

