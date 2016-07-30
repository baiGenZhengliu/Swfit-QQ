//
//  FootView.swift
//  Swfit之QQ
//
//  Created by HuJiazhou on 16/7/30.
//  Copyright © 2016年 HuJiazhou. All rights reserved.
//

import UIKit

class FootView: UIView {
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        
        self.backgroundColor = UIColor.clearColor()
     let button1 =  button(widthX: 0, name:"sidebar_setting", titile: "设置")
      let button2 =  button(widthX: 96, name: "sidebar_nightmode_on", titile: "夜间")
        
        addSubview(button1)
        addSubview(button2)
        

        
        
    }
    func button(widthX X:CGFloat ,name image:String, titile ti:String) ->UIButton{
        
        let button = UIButton()
        button.titleLabel?.font = UIFont.boldSystemFontOfSize(15)
        button.frame = CGRectMake( X , 0 , 48*2 , 48)
        button.setTitle(ti, forState: UIControlState.Normal)
        button.setImage(UIImage(named: image), forState: UIControlState.Normal)
   
        return button
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
   
}





