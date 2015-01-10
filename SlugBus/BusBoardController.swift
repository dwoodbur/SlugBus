//
//  BusBoardController.swift
//  SlugBus
//
//  Created by Dylan Woodbury on 1/10/15.
//  Copyright (c) 2015 200Jeter. All rights reserved.
//

import UIKit

class BusBoardController: UITableViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var messageBoard: UITableView!
    
    
    var messages = ["This is message 1","Fuck Alex"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.messageBoard.registerClass(messageBoardCustomCell.self, forCellReuseIdentifier: "messageBoardCell")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: TABLEVIEW
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.messages.count;
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:messageBoardCustomCell = messageBoard.dequeueReusableCellWithIdentifier("messageBoardCell") as messageBoardCustomCell
        
        cell.textLabel?.text = self.messages[indexPath.row]
        
        //cell.NameLabel.text = "First Last"
        //cell.MessageLabel.text = "This is the message I have to say!"
        
        return cell
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
