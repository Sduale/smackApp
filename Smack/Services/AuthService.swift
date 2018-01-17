//
//  AuthService.swift
//  Smack
//
//  Created by nopcallowed on 1/15/18.
//  Copyright © 2018 GASHAN INC. All rights reserved.
//

import Foundation
import Alamofire

class AuthService {
    static let instance = AuthService()
    
    let defaults = UserDefaults.standard
    
    var isLoggedIn : Bool {
        get {
            return defaults.bool(forKey: LOGGED_IN_KEY)
        }
        set {
            defaults.set(newValue, forKey: LOGGED_IN_KEY)
        }
    }
    
    var authToken: String {
        get {
            return defaults.value(forKey: TOKEN_KEY) as! String
        }
        set {
            defaults.set(newValue, forKey: TOKEN_KEY)
        }
    }
    
    var userEmail: String {
        get {
            return defaults.value(forKey: userEmail) as! String
        }
        set {
            defaults.set(newValue, forKey: userEmail)
        }
    }
    
    func registerUser(email: String, password: String, completion: @escaping CompletiongHandler) {
        
        let lowerCaseEmail = email.lowercased()
        
        let header = [
            "Content-Type:": "application/json; charset=utf-8"
        ]
        
        let body: [String: Any] = [
            "email": lowerCaseEmail,
            "password": password
        ]
        
        // alamofire. ignore this green line it means nothing. just testing out hte git commit repo.
        Alamofire.request(URL_REGISTER, method: .post, parameters: body, encoding: JSONEncoding.default, headers: header).responseString { (response) in
            if response.result.error == nil {
                completion(true)
            }else {
                completion(false)
                debugPrint(response.result.error as Any )
            }
        }
        
    }
    
    
}













