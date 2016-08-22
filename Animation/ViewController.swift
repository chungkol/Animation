//
//  ViewController.swift
//  Animation
//
//  Created by Chung on 8/22/16.
//  Copyright © 2016 newayplus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let duration:NSTimeInterval = 2.0
    @IBOutlet weak var logo: UIImageView!
   
    @IBAction func btnMove(sender: UIButton) {
        UIView.animateWithDuration(duration, animations: {
             self.logo.center = CGPointMake(230, self.logo!.center.y)
        }) { (finished) in
        UIView.animateWithDuration(self.duration, delay: 0.0, options: UIViewAnimationOptions.CurveLinear, animations: {
            self.logo.transform = CGAffineTransformIdentity
            self.logo.frame.origin.x = 30
            }, completion: nil)
        }
    }
    

    @IBAction func btnRotate(sender: UIButton) {
        UIView.animateWithDuration(duration, delay: 0.0, options: UIViewAnimationOptions.CurveEaseOut, animations: {
            self.logo.transform = CGAffineTransformMakeRotation(CGFloat(M_PI_2))
            }, completion: nil)
    }
    
    @IBAction func btnFlip(sender: UIButton) {
        UIView.animateWithDuration(duration, delay: 0.0, options: UIViewAnimationOptions.CurveEaseIn, animations: {
            self.logo.transform = CGAffineTransformMakeScale(-1, 1)
            }, completion: nil)
    }
    
    @IBAction func btnAlpha(sender: UIButton) {
        self.logo.alpha = 0
        UIView.animateWithDuration(duration, delay: 0.0, options: UIViewAnimationOptions.CurveEaseInOut, animations: {
            self.logo.alpha = 1
            }, completion: nil)
    }
    
    @IBAction func btnScale(sender: UIButton) {
        UIView.animateWithDuration(duration, delay: 0.0, options: UIViewAnimationOptions.CurveEaseIn, animations: {
           self.logo.transform = CGAffineTransformMakeScale(2, 2)
            }, completion: nil)
    }
    
    @IBAction func btnMix(sender: UIButton) {
        self.logo.alpha = 0
        let t1:CGAffineTransform = CGAffineTransformMakeRotation(CGFloat(M_PI_2))
        let t2:CGAffineTransform = CGAffineTransformMakeScale(2, 2)
        UIView.animateWithDuration(duration, delay: 0.0, options: UIViewAnimationOptions.CurveEaseOut, animations: {
            self.logo.alpha = 1
            self.logo.frame.origin.x = 230
            self.logo.transform = CGAffineTransformConcat(t1, t2)
            }, completion: nil)
    }
    
    @IBAction func btnReset(sender: UIButton) {
        self.logo.transform = CGAffineTransformIdentity
        self.logo.frame.origin.x = 30
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    


}

