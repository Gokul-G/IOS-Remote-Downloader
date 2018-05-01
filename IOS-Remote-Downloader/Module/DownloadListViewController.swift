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
    public init(withViewModel dlViewModel : DownloadListViewModel) {
        viewModel = dlViewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    
}
