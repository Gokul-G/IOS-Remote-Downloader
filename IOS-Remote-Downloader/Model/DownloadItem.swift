//
//  DownloadItem.swift
//  IOS-Remote-Downloader
//
//  Created by Gokul Ganapathy on 01/05/18.
//  Copyright © 2018 gokul. All rights reserved.
//

import Foundation

enum DownloadStatus : Int {
    case NotStarted = 0
    case InProgress
    case Paused
    case Completed
}

struct DownloadItem {
    var ID : String
    var Name : String
    var URL : String
    var status : DownloadStatus
    var size : Int64
    var CreatedAt : Date
}
