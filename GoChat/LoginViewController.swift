//
//  LoginViewController.swift
//  GoChat
//
//  Created by Subhay Manandhar on 12/23/16.
//  Copyright © 2016 Subhay Manandhar. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var AnonymousLoginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //setting the border of the button
        AnonymousLoginButton.layer.borderWidth = 2.0
        AnonymousLoginButton.layer.borderColor = UIColor.white.cgColor
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func AnonymousLoginDidTap(_ sender: Any) {
        print("Anonymous button tapped")
    }

    @IBAction func GoogleLoginDidTap(_ sender: Any) {
        print("Google login button tapped")
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
