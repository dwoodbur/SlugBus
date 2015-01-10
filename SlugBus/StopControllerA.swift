//
//  StopControllerA.swift
//  SlugBus
//
//  Created by Dylan Woodbury on 1/9/15.
//  Copyright (c) 2015 200Jeter. All rights reserved.
//

import UIKit

class StopControllerA: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var BusRoutes: UITableView!
    
    var routes: [String] = ["10","15","16","19","20","20D"]
    
    
    var route: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: TABLEVIEW
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.routes.count;
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if(indexPath.row == 0) {
            route = "10"
        } else if(indexPath.row == 1) {
            route = "15"
        } else if(indexPath.row == 2) {
            route = "16"
        } else if(indexPath.row == 3) {
            route = "19"
        } else if(indexPath.row == 4) {
            route = "20"
        } else if(indexPath.row == 5) {
            route = "20D"
        }
        
        self.performSegueWithIdentifier("routeToStop", sender: nil)
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell = self.BusRoutes.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
        
        cell.textLabel?.text = self.routes[indexPath.row]
        
        return cell
    }
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if(segue.identifier == "routeToStop") {
            var vc: StopControllerB = segue.destinationViewController as StopControllerB
            vc.route = route
            
        }
    }
    

}
