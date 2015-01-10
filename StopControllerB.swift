//
//  StopControllerB.swift
//  SlugBus
//
//  Created by Dylan Woodbury on 1/10/15.
//  Copyright (c) 2015 200Jeter. All rights reserved.
//

import UIKit

class StopControllerB: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var PickerView: UIPickerView!
    
    var stops: [String] = ["-Select Route-"]
    
    var stop: String!
    var route: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if(route == "10") {
            stops = ["A","B","C"]
        } else if(route == "15") {
            stops = ["D","E","F"]
        } else if(route == "16") {
            stops = ["G","H","I"]
        } else if(route == "19") {
            stops = ["J","K","L"]
        } else if(route == "20") {
            stops = ["M","N","O"]
        } else if(route == "20D") {
            stops = ["P","Q","R"]
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: Picker
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return stops.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return stops[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        stop = stops[row]
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if(segue.identifier == "stopToDisplay") {
            var vc: RouteStopDisplayController = segue.destinationViewController as RouteStopDisplayController
            vc.stop = stop
            vc.route = route
        }
    }
    

}
