//
//  DownloadListViewController.swift
//  IOS-Remote-Downloader
//
//  Created by Gokul Ganapathy on 01/05/18.
//  Copyright © 2018 gokul. All rights reserved.
//

import UIKit

class DownloadListViewController: UIViewController {
    
    var viewModel : DownloadListViewModel?
    
    //MARK:-  Initializers
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        viewModel = DownloadListViewModel()
    }
    
    override func viewDidLoad() {
        viewModel?.fetchDownloadList(completion: { (downloadList) in
            
        })
    }
    
    
    
}
