//
//  IssueDetailsVC.swift
//  Task_App
//
//  Created by Rim global on 19/06/18.
//  Copyright © 2018 Rim global. All rights reserved.
//

import UIKit

class ILabs_IssueBodyVC: UIViewController
{
    @IBOutlet weak var body: UILabel!
    
    var issueBody = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        body.text = issueBody
    }

    
    @IBAction func backAction(_ sender: UIBarButtonItem)
    {
        self.navigationController?.popViewController(animated: true)
    }
    
}
