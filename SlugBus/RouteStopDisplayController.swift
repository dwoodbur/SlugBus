//
//  RouteStopDisplayController.swift
//  SlugBus
//
//  Created by Dylan Woodbury on 1/10/15.
//  Copyright (c) 2015 200Jeter. All rights reserved.
//

import UIKit

class RouteStopDisplayController: UIViewController {

    @IBOutlet weak var RouteLabel: UILabel!
    @IBOutlet weak var StopLabel: UILabel!
    
    var route: String!
    var stop: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        RouteLabel.text = route
        StopLabel.text = stop
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
