//
//  SettingsController.swift
//  SlugBus
//
//  Created by Dylan Woodbury on 1/9/15.
//  Copyright (c) 2015 200Jeter. All rights reserved.
//

import UIKit

class SettingsController: UIViewController {

    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var EmailLabel: UILabel!
    @IBOutlet weak var YearLabel: UILabel!
    @IBOutlet weak var MajorLabel: UILabel!
    
    @IBOutlet weak var ProfilePicLabel: UIImageView!
    
    var name = "Name: "
    var email = "Email: "
    var year = "Year: "
    var major = "Major: "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NameLabel.text = name
        EmailLabel.text = email
        YearLabel.text = year
        MajorLabel.text = major
        
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
