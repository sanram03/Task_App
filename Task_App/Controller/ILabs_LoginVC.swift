//
//  ViewController.swift
//  Task_App
//
//  Created by Rim global on 19/06/18.
//  Copyright © 2018 Rim global. All rights reserved.
//

import UIKit

class ILabs_LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func unresovedAction(_ sender: UIButton)
    {
        let issuesVC = self.storyboard?.instantiateViewController(withIdentifier: StoryBoardIdentifier.ILabs_InboxVC) as! ILabs_InboxVC
        self.navigationController?.pushViewController(issuesVC, animated: true)
    }
    
}

