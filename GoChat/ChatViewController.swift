//
//  ChatViewController.swift
//  GoChat
//
//  Created by Subhay Manandhar on 12/23/16.
//  Copyright © 2016 Subhay Manandhar. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func logoutDidTapped(_ sender: Any) {
        
        //switch the view from login to chat
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        //instantiate a navigation controller
        let loginVC = storyboard.instantiateViewController(withIdentifier: "loginVC") as! LoginViewController
        
        //get the app delegate
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        //set the navigation controller as root controller
        appDelegate.window?.rootViewController = loginVC

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
