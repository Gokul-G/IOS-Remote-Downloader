//
//  DownloadAPI.swift
//  IOS-Remote-Downloader
//
//  Created by Gokul Ganapathy on 01/05/18.
//  Copyright © 2018 gokul. All rights reserved.
//

import Alamofire


class DownloadAPI  {
    

static func getDownloadList(withSuccessHandler successHandler: @escaping () -> (), failureHandler :@escaping (Error)-> ()) {
        Alamofire.request("http:localhost:8080/downloads").responseJSON { (response) in
            switch response.result {
            case .success:
                successHandler()
            case .failure(let error):
                failureHandler(error)
            }
        }
    }
}
