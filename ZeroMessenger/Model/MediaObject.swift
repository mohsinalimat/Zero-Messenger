//
//  MediaObject.swift
//  ZeroMessger
//
//  Created by Sandeep Mukherjee on 8/21/20.
//  Copyright © 2020 Sandeep Mukherjee. All rights reserved.
//

import UIKit
import Photos

class MediaObject: NSObject {
  var object: Data?
  var videoObject: Data?
  var audioObject: Data?
  var indexPath: IndexPath?
  var imageSource: String?
  var phAsset: PHAsset?
  var filename: String?
  var fileURL: String?
  
  init(dictionary: [String: AnyObject]) {
    super.init()
    
    object = dictionary["object"] as? Data
    videoObject = dictionary["videoObject"] as? Data
    audioObject = dictionary["audioObject"] as? Data
    indexPath = dictionary["indexPath"] as? IndexPath
    imageSource = dictionary["imageSource"] as? String
    phAsset = dictionary["phAsset"] as? PHAsset
    filename = dictionary["filename"] as? String
    fileURL = dictionary["fileURL"] as? String
  }
}
