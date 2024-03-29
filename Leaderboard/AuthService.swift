//
//  AuthService.swift
//  Leaderboard
//
//  Created by Raquel Bonilla on 7/2/17.
//  Copyright © 2017 Raquel Bonilla. All rights reserved.
//

import Foundation
import Firebase

class AuthService {
    
    class func signInUser(email: String!, password:String!, completion: AuthResultCallback?) {
        Auth.auth().signIn(withEmail: email, password: password, completion: completion)
    }
    
    class func signUpUser(email: String!, password:String!, completion: AuthResultCallback?) {
        Auth.auth().createUser(withEmail: email, password: password, completion: completion)
    }
    
    class func signOutUser() -> Bool {
        do {
            try Auth.auth().signOut()
            return true
        } catch let signOutError as NSError {
            debugPrint("Error on signOut: %@", signOutError)
            return false
        }
    }
    
    class func currentUser() -> User? {
        return Auth.auth().currentUser
    }
    
}
