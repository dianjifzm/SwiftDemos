//
//  ViewController.swift
//  SwiftTieBa
//
//  Created by fzming on 15/1/8.
//  Copyright (c) 2015年 fzming. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
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
        return 10
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 127
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("TieBaCell", forIndexPath: indexPath) as UITableViewCell
        cell.backgroundColor = UIColor(patternImage: UIImage(named: "pic_background")!)

        return cell
    }
}


