//
//  LoginViewController.swift
//  GoChat
//
//  Created by Subhay Manandhar on 12/23/16.
//  Copyright © 2016 Subhay Manandhar. All rights reserved.
//

import UIKit
import GoogleSignIn


class LoginViewController: UIViewController, GIDSignInUIDelegate, GIDSignInDelegate {

    @IBOutlet weak var AnonymousLoginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //setting the border of the button
        AnonymousLoginButton.layer.borderWidth = 2.0
        AnonymousLoginButton.layer.borderColor = UIColor.white.cgColor
        
        GIDSignIn.sharedInstance().clientID = "991341783726-lk914hd2el3raq6eejuflvp35q080hrt.apps.googleusercontent.com"
        GIDSignIn.sharedInstance().uiDelegate = self
        GIDSignIn.sharedInstance().delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func AnonymousLoginDidTap(_ sender: Any) {
        print("Anonymous button tapped")
        Helper.helper.anonymousLogin()
        
    }

    @IBAction func GoogleLoginDidTap(_ sender: Any) {
        print("Google login button tapped")
        GIDSignIn.sharedInstance().signIn()
        
        
    }
    
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
        if error != nil{
            print(error.localizedDescription)
            return
        }
        print(user.authentication)
        Helper.helper.logInWithGoogle(authentication: user.authentication)
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
