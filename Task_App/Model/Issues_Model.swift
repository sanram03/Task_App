//
//  Issues_Model.swift
//  Task_App
//
//  Created by Rim global on 19/06/18.
//  Copyright © 2018 Rim global. All rights reserved.
//

import Foundation

class Issues_Model
{
    let profileImg : String
    let title : String
    let body : String
    
    init(issuesList: NSDictionary)
    {
        self.profileImg = (issuesList["user"] as! NSDictionary)["avatar_url"] as? String ?? ""
        self.title = issuesList["title"] as? String ?? ""
        self.body = issuesList["body"] as? String ?? ""
    }
}
