//
//  Helper.swift
//  GoChat
//
//  Created by Subhay Manandhar on 12/26/16.
//  Copyright © 2016 Subhay Manandhar. All rights reserved.
//

import Foundation
import FirebaseAuth
import UIKit
import GoogleSignIn

class Helper{
    static let helper = Helper()
    func anonymousLogin() {
        
        FIRAuth.auth()?.signInAnonymously(completion: { (anonymousUser, error) in
            if error == nil{
                print("User ID: \(anonymousUser!.uid)")
                self.switchToNavigationViewController()
                
            }
            else{
                print(error!.localizedDescription)
            }
        })
    }
    
    func logInWithGoogle(authentication: GIDAuthentication){
        let credential = FIRGoogleAuthProvider.credential(withIDToken: authentication.idToken, accessToken: authentication.accessToken)
    
        FIRAuth.auth()?.signIn(with: credential, completion: { (user, error) in
            if error != nil {
                print(error!.localizedDescription)
            }
            else{
                print(user?.email)
                print(user?.displayName)
                self.switchToNavigationViewController()
            }
        })
        
    }
    
    func switchToNavigationViewController(){
        //switch the view from login to chat
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        //instantiate a navigation controller
        let naviVC = storyboard.instantiateViewController(withIdentifier: "NavigationVC") as! UINavigationController
        
        //get the app delegate
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        //set the navigation controller as root controller
        appDelegate.window?.rootViewController = naviVC
    }

}
