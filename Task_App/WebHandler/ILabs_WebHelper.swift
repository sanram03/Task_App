//
//  ILabs_WebHelper.swift
//  Task_App
//
//  Created by Rim global on 19/06/18.
//  Copyright © 2018 Rim global. All rights reserved.
//

import UIKit

let imageCache = NSCache<AnyObject,AnyObject>()

class ILabs_WebHelper: NSObject
{
    
    
    static func processRequest(urlString: String,completionHandler: @escaping (_ error: String?,_ response: Data?)->())
    {
        let url = URL(string: urlString)!
        
        let session = URLSession.shared
        
        session.dataTask(with: url, completionHandler: {
            (data,response,error) in
            if error == nil
            {
                if (response as! HTTPURLResponse).statusCode == 200
                {
                    completionHandler(nil, data)
                }
            }
            else
            {
                completionHandler("Request could not be processed",nil)
            }
            
        }).resume()
    }
    
}

extension UIImageView
{
    func downloadImage(fromUrl url: String)
    {
        
        let url = URL(string: url)!
        
        if let image = imageCache.object(forKey: url as AnyObject) as? UIImage
        {
            self.image = image
            return
        }
        
        URLSession.shared.dataTask(with: url, completionHandler: {
            (data,response,error) in
            if error == nil
            {
                if (response as! HTTPURLResponse).statusCode == 200
                {
                        DispatchQueue.main.async
                        {
                            let image = UIImage(data: data!)
                            self.image = image
                            imageCache.setObject(image!, forKey: url as AnyObject)
                        }
                }
            }
            else
            {
                self.image = nil
            }
            
        }).resume()
    }
}

extension Data
{
    func convertToJson()->[NSDictionary]?
    {
        do
        {
            return try JSONSerialization.jsonObject(with: self, options: []) as? [NSDictionary]
        }
        catch
        {
            print(error.localizedDescription)
        }
        return nil
    }
}
