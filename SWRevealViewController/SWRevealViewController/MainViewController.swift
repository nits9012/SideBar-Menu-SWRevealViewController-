//
//  MainViewController.swift
//  SWRevealViewController
//
//  Created by Maneesh Madan on 5/19/16.
//  Copyright © 2016 oodles. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    

    @IBOutlet weak var backButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if self.revealViewController() != nil {
            backButton.target = self.revealViewController()
            backButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            self.revealViewController().toggleAnimationType = SWRevealToggleAnimationType.Spring
            self.revealViewController().toggleAnimationDuration = 1.0
            self.revealViewController().shouldUseFrontViewOverlay = true
        }
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
