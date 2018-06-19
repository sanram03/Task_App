//
//  Issue_ListerVC.swift
//  Task_App
//
//  Created by Rim global on 19/06/18.
//  Copyright © 2018 Rim global. All rights reserved.
//

import UIKit

class ILabs_InboxVC: UIViewController
{
    
    private var issuesHolder = [Issues_Model]()
    @IBOutlet weak var issueDisplayer: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        getData()
    }
 
    func getData()
    {
        ILabs_WebHelper.processRequest(urlString: WebUrl.issueURL.rawValue, completionHandler: { [weak self]
            (error,response) in
            if error == nil
            {
                guard let responseData = response,let jsonData = responseData.convertToJson() else {return}
                print("json Data is \(jsonData)")
                for issue in jsonData
                {
                    let issueObj = Issues_Model(issuesList: issue)
                    self?.issuesHolder.append(issueObj)
                }
                DispatchQueue.main.async {
                    self?.issueDisplayer.reloadData()
                }
            }
        })
    }

    @IBAction func backAction(_ sender: UIBarButtonItem)
    {
        self.navigationController?.popViewController(animated: true)
    }
    
}


extension ILabs_InboxVC: UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return issuesHolder.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCellIdentifier.ILabs_IssueCustomCell, for: indexPath) as! ILabs_IssueCustomCell
        
        cell.userImg.downloadImage(fromUrl: self.issuesHolder[indexPath.row].profileImg)
        cell.issueTitle.text = self.issuesHolder[indexPath.row].title
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let issueBody = self.storyboard?.instantiateViewController(withIdentifier: StoryBoardIdentifier.ILabs_IssueBodyVC) as! ILabs_IssueBodyVC
        issueBody.issueBody = self.issuesHolder[indexPath.row].body
        self.navigationController?.pushViewController(issueBody, animated: true)
        
    }
}
