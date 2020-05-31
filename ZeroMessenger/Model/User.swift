//
//  User.swift
//  ZeroMessger
//
//  Created by Sandeep Mukherjee on 8/6/20.
//  Copyright © 2020 Sandeep Mukherjee. All rights reserved.
//

import UIKit

class User: NSObject {

  var id: String?
  @objc var name: String?
  var bio: String?
  var photoURL: String?
  var thumbnailPhotoURL: String?
  var phoneNumber: String?
  var onlineStatus: AnyObject?
  var isSelected: Bool! = false
  
  init(dictionary: [String: AnyObject]) {
    id = dictionary["id"] as? String
    name = dictionary["name"] as? String
    bio = dictionary["bio"] as? String
    photoURL = dictionary["photoURL"] as? String
    thumbnailPhotoURL = dictionary["thumbnailPhotoURL"] as? String
    phoneNumber = dictionary["phoneNumber"] as? String
    onlineStatus = dictionary["OnlineStatus"]
  }
}

extension User {
  var titleFirstLetter: String {
    guard let name = name else {return "" }
    return String(name[name.startIndex]).uppercased()
  }
}