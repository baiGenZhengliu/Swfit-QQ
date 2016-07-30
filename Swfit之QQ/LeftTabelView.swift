//
//  LeftTabelView.swift
//  Swfit之QQ
//
//  Created by HuJiazhou on 16/7/30.
//  Copyright © 2016年 HuJiazhou. All rights reserved.
//


import UIKit

class LeftTabelView: UITableView ,UITableViewDataSource,UITableViewDelegate{
    
    
    override init(frame: CGRect, style: UITableViewStyle) {
        
        super.init(frame: frame, style: style)
        delegate = self
        dataSource = self
        self.backgroundColor = UIColor.clearColor()
        setui()
   
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setui(){
 
       separatorStyle=UITableViewCellSeparatorStyle.None
 
        rowHeight  = 50
        
        registerClass(UITableViewCell.self, forCellReuseIdentifier:"cell")
    }
    
    // MARK: - Table view data source
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 6
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        cell.textLabel?.textColor = UIColor.whiteColor()
        cell.backgroundColor = UIColor.clearColor()

        cell.selectionStyle = UITableViewCellSelectionStyle.None
        
        cell.textLabel?.font = UIFont.boldSystemFontOfSize(15)
        
        if (indexPath.row==0) {
            cell.imageView!.image = UIImage(named:"sidebar_business")
            cell.textLabel!.text = "我的商城";
        }else if (indexPath.row==1){
            cell.imageView!.image=UIImage(named :"sidebar_purse")
            cell.textLabel!.text = "QQ钱包";
        }else if (indexPath.row==2){
            cell.imageView!.image=UIImage(named:"sidebar_decoration")
            cell.textLabel!.text = "个性装扮";
        }else if (indexPath.row==3){
            cell.imageView!.image=UIImage(named:"sidebar_favorit")
            cell.textLabel!.text = "我的收藏";
        }else if (indexPath.row==4){
            cell.imageView!.image=UIImage(named:"sidebar_album")
            cell.textLabel!.text = "我的相册";
        }else{
            cell.imageView!.image=UIImage(named:"sidebar_file")
            cell.textLabel!.text = "我的文件";
        }
        
        return cell
    }
    
    
    
}
