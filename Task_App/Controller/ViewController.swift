//
//  ViewController.swift
//  CustomButtonApp
//
//  Created by Rim global on 19/06/18.
//  Copyright © 2018 Rim global. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let custView = CustomView(frame: CGRect(x: 40, y: 100, width: self.view.bounds.width-40, height: 400),count: 3)
        custView.backgroundColor = .clear
        self.view.addSubview(custView)
    }
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

