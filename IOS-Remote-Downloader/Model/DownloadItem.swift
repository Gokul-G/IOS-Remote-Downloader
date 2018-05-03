//
//  DownloadItem.swift
//  IOS-Remote-Downloader
//
//  Created by Gokul Ganapathy on 01/05/18.
//  Copyright © 2018 gokul. All rights reserved.
//

import Foundation

enum DownloadStatus : Int , Codable {
    case NotStarted = 0
    case InProgress
    case Paused
    case Completed
}

struct DownloadItem : Codable{
    var ID : Int64
    var Name : String
    var URL : String
    var Status : DownloadStatus
    var Size : Int64
    var CreatedAt : Date
    
    enum CodingKeys: String, CodingKey {
        case ID = "id"
        case Name = "name"
        case URL = "url"
        case Status = "status"
        case Size = "size"
        case CreatedAt = "created_at"
    }
}

extension DownloadItem {
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        ID = try container.decode(Int64.self, forKey: .ID)
        Name = try container.decode(String.self, forKey: .Name)
        URL = try container.decode(String.self, forKey: .URL)
        Status = try container.decode(DownloadStatus.self, forKey: .Status)
        Size = try container.decode(Int64.self, forKey: .Size)
        let dateString = try container.decode(String.self, forKey: .CreatedAt)
        
        let formatter = DateFormatter.iso8601Full
        if let date = formatter.date(from: dateString) {
            CreatedAt = date
        } else {
            throw DecodingError.dataCorruptedError(forKey: .CreatedAt,
                                                   in: container,
                                                   debugDescription: "Date string does not match format expected by formatter.")
        }
        
    }
        
}


