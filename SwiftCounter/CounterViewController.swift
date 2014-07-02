//
//  CounterViewController.swift
//  SwiftCounter
//
//  Created by Yinbo Chen on 7/2/14.
//  Copyright (c) 2014 Yinbo Chen. All rights reserved.
//

import Foundation
import UIKit

class CounterViewController : UIViewController {
    
    
    
    // UI controls
    
    var timeLabel: UILabel?
    var timeButtons: UIButton[]?
    var startStopButton: UIButton?
    var clearButton: UIButton?
    
    let timeButtonInfos = [("1min",60),("3min",180),("5min",300),("second",1)]
    
    
    override func viewDidLoad()  {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        setupTimeLabel()
        setuptimeButtons()
        setupActionButtons()
        
    }

    
    
    // UI Helpers
    
    func setupTimeLabel() {
        timeLabel = UILabel()
        timeLabel!.textColor = UIColor.whiteColor()
        timeLabel!.font = UIFont(name: nil, size: 80)
        timeLabel!.backgroundColor = UIColor.blackColor()
        timeLabel!.textAlignment = NSTextAlignment.Center
        
        self.view.addSubview(timeLabel)
        
        
    }
    
    func setuptimeButtons () {
        
        var buttons: UIButton[] = []
        
        for (index, (title,_)) in enumerate(timeButtonInfos) {
            
            let button: UIButton = UIButton()
            
            button.tag = index
            button.setTitle("\(title)", forState: UIControlState.Normal)
            
            button.backgroundColor = UIColor.orangeColor()
            button.setTitleColor(UIColor.whiteColor(), forState:UIControlState.Normal)
            button.setTitleColor(UIColor.blackColor(), forState:UIControlState.Highlighted)
            button.addTarget(self, action: "timeButtonTapped:", forControlEvents: UIControlEvents.TouchUpInside)
            
            buttons += button
            self.view.addSubview(button)
            
            
        }
        
        timeButtons = buttons
        
    }
    
    
    func setupActionButtons() {
        
        // create start/stop button
        startStopButton = UIButton()
        startStopButton!.backgroundColor = UIColor.redColor()
        startStopButton!.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        startStopButton!.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        startStopButton!.setTitle("start/stop", forState: UIControlState.Normal)
        startStopButton!.addTarget(self, action: "startStopButtonTapped:", forControlEvents: UIControlEvents.TouchUpInside)
        
        self.view.addSubview(startStopButton)
        
        clearButton = UIButton ()
        
        clearButton!.backgroundColor = UIColor.redColor()
        clearButton!.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        clearButton!.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        clearButton!.setTitle("setback", forState: UIControlState.Normal)
        clearButton!.addTarget(self, action: "clearButtonTapped:", forControlEvents: UIControlEvents.TouchUpInside)
        
        self.view.addSubview(clearButton)
        
        
    }
    
    
    // actions and callbacks

    func startStopButtonTapped(sender: UIButton) {
        
    }
    
    func clearButtonTapped(sender: UIButton) {
        
    }
    
    func timeButtonTapped(sender: UIButton) {
        
    }
    
    func updateTimer(timer: NSTimer) {
        
    }
    
    
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        timeLabel!.frame = CGRectMake(10, 40, self.view.bounds.size.width-20, 120)
        
        let gap = ( self.view.bounds.size.width - 10*2 - (CGFloat(timeButtons!.count) * 64) ) / CGFloat(timeButtons!.count - 1)
        for (index, button) in enumerate(timeButtons!) {
            let buttonLeft = 10 + (64 + gap) * CGFloat(index)
            button.frame = CGRectMake(buttonLeft, self.view.bounds.size.height-120, 64, 44)
        }
        
        startStopButton!.frame = CGRectMake(10, self.view.bounds.size.height-60, self.view.bounds.size.width-20-100, 44)
        clearButton!.frame = CGRectMake(10+self.view.bounds.size.width-20-100+20, self.view.bounds.size.height-60, 80, 44)
        
    }

    
    


    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

