//
//  Identifiers.swift
//  Task_App
//
//  Created by Rim global on 19/06/18.
//  Copyright © 2018 Rim global. All rights reserved.
//

import Foundation

struct StoryBoardIdentifier {
    static let ILabs_LoginVC        =   "ILabs_LoginVC"
    static let ILabs_InboxVC        =   "ILabs_InboxVC"
    static let ILabs_IssueBodyVC    =   "ILabs_IssueBodyVC"
}

struct TableViewCellIdentifier {
    static let ILabs_IssueCustomCell =   "ILabs_IssueCustomCell"
}

enum WebUrl : String
{
    case issueURL =   "https://api.github.com/repos/crashlytics/secureudid/issues"
}
