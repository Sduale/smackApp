//
//  Constants.swift
//  Smack
//
//  Created by nopcallowed on 1/8/18.
//  Copyright © 2018 GASHAN INC. All rights reserved.
//

import Foundation

// typealies: basically change the title/name of a type.
typealias CompletiongHandler = (_ Success: Bool) -> ()

// URL Constants
let BASE_URSL = "https://chattychattah.herokuapp.com/v1"
let URL_REGISTER = "\(BASE_URSL)account/register"

// Segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"

// User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"
