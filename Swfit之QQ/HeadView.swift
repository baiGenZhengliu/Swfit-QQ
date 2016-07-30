//
//  HeadView.swift
//  Swfit之QQ
//
//  Created by HuJiazhou on 16/7/30.
//  Copyright © 2016年 HuJiazhou. All rights reserved.
//

import UIKit
import SnapKit

class HeadView: UIView {

    override init(frame: CGRect) {
    
        super.init(frame: frame)
        
        let imgeview1 = UIImageView(image: UIImage(named: "sidebar_bg"))
        imgeview1.frame  = CGRect(x:0,y: 0,width: self.frame.size.width,height: KSCREEN.height*0.4)
        
        self.addSubview(imgeview1)
  
        //头像
        let nameimage = UIImageView()
        nameimage.image = UIImage(named: "123")
        nameimage.layer.cornerRadius = 25
        nameimage.layer.masksToBounds = true
        nameimage.layer.borderWidth = 1
        nameimage.layer.borderColor = UIColor.orangeColor().CGColor
        
        self.addSubview(nameimage)

        
        nameimage.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(self).offset(60)
            make.left.equalTo(self).offset(30)
            make.height.equalTo(50)
            make.width.equalTo(50)
        }
        
        
        //QQ名称
        
        let namelable = UILabel()
        
        namelable.text = "百舸争流"
        
        namelable.font = UIFont.boldSystemFontOfSize(16)
        
        self.addSubview(namelable)
        
        namelable.snp_makeConstraints { (make) -> Void in
            
            make.top.equalTo(self).offset(60)
            make.left.equalTo(nameimage).offset(60)
            make.height.equalTo(25)
        }
        
        //二维码
        
        let erweima = UIImageView()
        
        erweima.image = UIImage(named:"sidebar_ QRcode_normal")
        
        self.addSubview(erweima)
        
        erweima.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(self).offset(60)
            make.left.equalTo(namelable).offset(100)
            make.height.equalTo(30)
            make.width.equalTo(30)
            
        }

    }



   required init?(coder aDecoder: NSCoder) {
       fatalError("init(coder:) has not been implemented")
   }

}
