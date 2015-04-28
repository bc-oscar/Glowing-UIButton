//
//  GlowingButton.swift
//  Sample App
//
//  Created by Oscar Cortes on 4/28/15.
//  Copyright (c) 2015 Oscar Cortes. All rights reserved.
//

import UIKit

class GlowingButton: UIButton {
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

    // Creates a glow effect in the button by setting its layer shadow properties
    func startGlowWithCGColor (growColor:CGColor) {
        self.layer.shadowColor = growColor
        self.layer.shadowRadius = 10.0
        self.layer.shadowOpacity = 1.0
        self.layer.shadowOffset = CGSizeZero
        self.layer.masksToBounds = false
        
        // Autoreverse, Repeat and allow user interaction.
        UIView.animateWithDuration(1.0, delay: 0, options: UIViewAnimationOptions.Autoreverse |                                                         UIViewAnimationOptions.CurveEaseInOut | UIViewAnimationOptions.Repeat
            | UIViewAnimationOptions.AllowUserInteraction,
            animations: { () -> Void in
                // Make it a 15% bigger
                self.transform = CGAffineTransformMakeScale(1.15, 1.15)
            }) { (Bool) -> Void in
                // Return to original size
                self.layer.shadowRadius = 0.0
                self.transform = CGAffineTransformMakeScale(1.0, 1.0)
        }
    }
    
    // Removes the animation
    func stopGlow () {
        self.layer.shadowRadius = 0.0
        self.transform = CGAffineTransformMakeScale(1.0, 1.0)
        self.layer.removeAllAnimations()
        self.layer.masksToBounds = true
    }

}
