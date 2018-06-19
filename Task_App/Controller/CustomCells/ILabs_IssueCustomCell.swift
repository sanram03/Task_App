//
//  IsssuesListerCell.swift
//  Task_App
//
//  Created by Rim global on 19/06/18.
//  Copyright © 2018 Rim global. All rights reserved.
//

import UIKit

class ILabs_IssueCustomCell: UITableViewCell
{

    @IBOutlet weak var userImg: UIImageView!
    @IBOutlet weak var issueTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
