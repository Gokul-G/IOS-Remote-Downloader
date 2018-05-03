//
//  DownloadListViewModel.swift
//  IOS-Remote-Downloader
//
//  Created by Gokul Ganapathy on 01/05/18.
//  Copyright © 2018 gokul. All rights reserved.
//

import Foundation

class DownloadListViewModel {
    
    var downloadItems : [DownloadItem] = []
    
    func fetchDownloadList(completion : @escaping ([DownloadItem]) -> ()) {
        DownloadAPI.getDownloadList(withSuccessHandler: { response in
            let downloadList = try! JSONDecoder().decode([DownloadItem].self, from: response.data!)
            completion(downloadList)
        }) { (error) in
            
        }
    }
            
}
