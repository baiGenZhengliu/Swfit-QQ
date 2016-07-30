//
//  ViewController.swift
//  Swfit之QQ
//
//  Created by HuJiazhou on 16/7/30.
//  Copyright © 2016年 HuJiazhou. All rights reserved.
//

import UIKit

let kScreenColoc = UIColor(red: 111/255, green:218/255 , blue:242/255 , alpha: 1)


class ViewController: UITabBarController
{

 
    override func viewDidLoad() {
        super.viewDidLoad()

        //添加拖拽手势
        let pan:UIPanGestureRecognizer = UIPanGestureRecognizer(target: self, action: "didPanEvent:")
        self.view.addGestureRecognizer(pan)
        
        self.view.backgroundColor = UIColor.whiteColor()
        
        self.getAddChrldControl(HJZNews(), titlname: "消息", imageNme: "tab_recent_nor")
        
        self.getAddChrldControl(HJZContacter(), titlname: "联系人", imageNme: "tab_buddy_nor")
        
        self.getAddChrldControl(HJZDynamicController(), titlname: "动态", imageNme: "tab_qworld_nor")
 
    }
    
    func didPanEvent(recognizer:UIPanGestureRecognizer){
    // 1. 获取手指拖拽的时候, 平移的值
        let translation:CGPoint = recognizer.translationInView(recognizer.view)
    // 2. 让当前控件做响应的平移
        
    recognizer.view!.transform = CGAffineTransformTranslate(recognizer.view!.transform, translation.x, 0);
     // ＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

        UIApplication.sharedApplication().delegate!.window!!.subviews.first?.transform.tx = (recognizer.view?.transform.tx)!/3
        
    
         // 3. 每次平移手势识别完毕后, 让平移的值不要累加
        recognizer.setTranslation(CGPointZero, inView: recognizer.view)
        
        //获取最右边范围
       let rightScopeTransform:CGAffineTransform = CGAffineTransformTranslate(UIApplication.sharedApplication().delegate!.window!!.transform,UIScreen.mainScreen().bounds.size.width*0.75, 0);
        //    当移动到右边极限时
        
        if (recognizer.view!.transform.tx > rightScopeTransform.tx) {
//            限制最右边的范围
            recognizer.view!.transform = rightScopeTransform
//        限制透明view最右边的范围

            
            UIApplication.sharedApplication().delegate!.window!!.subviews.first?.transform.tx = (recognizer.view?.transform.tx)!/3

            

        }else if (recognizer.view!.transform.tx < 0.0){

            //        限制最左边的范围
            recognizer.view!.transform = CGAffineTransformTranslate(UIApplication.sharedApplication().delegate!.window!!.transform,0, 0);
            //    限制透明view最左边的范围

            UIApplication.sharedApplication().delegate!.window!!.subviews.first?.transform.tx = (recognizer.view?.transform.tx)!/3

        }
        
        //    当托拽手势结束时执行
        if (recognizer.state == UIGestureRecognizerState.Ended){
        UIView.animateWithDuration(0.2, animations: { () -> Void in
            
            if (recognizer.view!.frame.origin.x > KSCREEN.width*0.5) {
                
                recognizer.view!.transform = rightScopeTransform;

                UIApplication.sharedApplication().delegate!.window!!.subviews.first?.transform.tx = (recognizer.view?.transform.tx)!/3
                
            }else{
                
                recognizer.view!.transform = CGAffineTransformIdentity;

                UIApplication.sharedApplication().delegate!.window!!.subviews.first?.transform.tx = (recognizer.view?.transform.tx)!/3
                
            }

        })
            
      }
  }
    
    
    func getAddChrldControl(controller:UITableViewController,titlname:String,imageNme:String){
    
        let news = controller
        
        let nav1 = UINavigationController(rootViewController: news)
        
        nav1.tabBarItem.title = titlname
        
        nav1.tabBarItem.image = UIImage(named: imageNme)
        
        addChildViewController(nav1)
    }

}