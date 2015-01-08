//
//  ViewController.swift
//  SwiftTieBa
//
//  Created by fzming on 15/1/8.
//  Copyright (c) 2015年 fzming. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var data:[[String]] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.backgroundColor = UIColor(patternImage: UIImage(named: "pic_background")!)
        self.refreshControl = UIRefreshControl()
        refreshControl?.addTarget(self, action: Selector("refresh"), forControlEvents: UIControlEvents.ValueChanged)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func refresh(){
        sleep(1)
        var formatter = NSDateFormatter()
        formatter.dateFormat = "MMM d, h:mm a"
        var title = "Last update: \(formatter.stringFromDate(NSDate()))"
        refreshControl?.attributedTitle =  NSAttributedString(string: title);
        tableView.reloadData()
        refreshControl?.endRefreshing()
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if data.count <= indexPath.row {
            data.append([randomName(),randomAnswerCountStr(),randomStr()])
        }
        var line = countElements(data[indexPath.row][2]) / 43 + 1

        //textView.contentSize.height
        return  CGFloat(15 * line + 110)
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("TieBaCell", forIndexPath: indexPath) as UITableViewCell
        cell.backgroundColor = UIColor(patternImage: UIImage(named: "pic_background")!)
        
        
       
        var name = cell.viewWithTag(100) as UILabel
        var number = cell.viewWithTag(101) as UILabel
        var text = cell.viewWithTag(102) as UITextView
        var title = cell.viewWithTag(103) as UILabel

        name.text = data[indexPath.row][0]
        number.text = data[indexPath.row][1]
        text.text = data[indexPath.row][2]
        title.text = data[indexPath.row][0]+"随机生成的帖子"
        return cell
    }
}


