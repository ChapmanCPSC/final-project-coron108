//
//  MenuViewController.swift
//  BlackJack
//
//  Created by Daniel Corona on 5/15/16.
//  Copyright © 2016 Corona, Danny. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "blackJack_BG")!)


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playPressed(sender: AnyObject) {
    }
    
    @IBAction func rulesPressed(sender: AnyObject) {
        
        UIApplication.sharedApplication().openURL(NSURL(string: "http://www.bicyclecards.com/how-to-play/blackjack/")!)
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
