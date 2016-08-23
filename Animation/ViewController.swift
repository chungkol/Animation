//
//  ViewController.swift
//  Animation
//
//  Created by Chung on 8/22/16.
//  Copyright © 2016 newayplus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var duration:NSTimeInterval = 2.0
    
    @IBOutlet weak var lbName: UILabel!
    
    @IBOutlet weak var logo: UIImageView!
    
    @IBOutlet weak var lbZing: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.logo!.alpha = 0
        self.lbName!.alpha = 0
        self.lbZing!.alpha = 0
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        UIView.animateWithDuration(duration, animations: {
            self.logo!.alpha = 1

        }) { (finished) in
            UIView.animateWithDuration(self.duration, animations: {
                self.lbZing.center = CGPoint(x: self.lbZing!.center.x, y: 80)
                self.lbZing!.alpha = 1
            }) { (finished) in
                UIView.animateWithDuration(self.duration, animations: {
                    self.lbName.center = CGPoint(x: self.lbName!.center.x, y: 500)
                    self.lbName!.alpha = 1
                })
                
                
            }
            
            
        }
    }
    
    
    
    
}

