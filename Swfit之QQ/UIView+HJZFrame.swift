//
//  UIView+HJZFrame.swift
//  Swfit之QQ
//
//  Created by HuJiazhou on 16/7/28.
//  Copyright © 2016年 HuJiazhou. All rights reserved.
//

import UIKit

var x: CGFloat?
var y: CGFloat?
var w: CGFloat?
var h: CGFloat?
var ttx: CGFloat?
var tty: CGFloat?


class UIView_HJZFrame: UIView {

    var x: CGFloat?{
        
        set{
            
            frame = self.frame
            frame.origin.x = x!
            self.frame = frame
        }
        get{
            return self.frame.origin.x
        }
    }
    
    var y: CGFloat?{
        
        set{
        
        frame = self.frame
        frame.origin.y = y!
        self.frame = frame
        }
        
        get{
        
        return self.frame.origin.y
        
        }
    }
    
    var w: CGFloat?{
        
        set{
            
            frame = self.frame
            frame.size.width = w!
            self.frame = frame
        }
        
        get{
            
            return self.frame.size.width
            
        }
    }
    
    var h: CGFloat?{
        
        set{
            
            frame = self.frame
            frame.size.height = h!
            self.frame = frame
        }
        
        get{
            
            return self.frame.size.height
            
        }
    }

    var ttx: CGFloat?{
        
        set{
            
            transform=self.transform;
            transform.tx = ttx!;
            self.transform = transform;
        }
        
        get{
            
            return self.transform.tx
            
        }
    }
    
    var tty: CGFloat?{
        
        set{
            
            transform=self.transform;
            transform.tx = tty!;
            self.transform = transform;
        }
        
        get{
            
            return self.transform.ty
            
        }
    }
}
