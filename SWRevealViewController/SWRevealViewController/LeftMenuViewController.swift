//
//  LeftMenuViewController.swift
//  SWRevealViewController
//
//  Created by Maneesh Madan on 5/20/16.
//  Copyright © 2016 oodles. All rights reserved.
//

import UIKit

class LeftMenuViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    var rowIntableView = ["First Menu","Second Menu","Third Menu"]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rowIntableView.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell:UITableViewCell!
        
        switch indexPath.row {
        case 0:
            cell = tableView.dequeueReusableCellWithIdentifier("firstCell")
            cell?.textLabel?.text = rowIntableView[indexPath.row]
        case 1:
            cell = tableView.dequeueReusableCellWithIdentifier("secondCell")
            cell?.textLabel?.text = rowIntableView[indexPath.row]
        case 2:
            cell = tableView.dequeueReusableCellWithIdentifier("thirdCell")
            cell?.textLabel?.text = rowIntableView[indexPath.row]
        default:
            break
        }
        
        return cell
    }
    
}
