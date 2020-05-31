//
//  LeaveGroupAndChangeAdminController.swift
//  ZeroMessger
//
//  Created by Sandeep Mukherjee on 5/22/20.
//  Copyright © 2020 Sandeep Mukherjee. All rights reserved.
//

import UIKit

class LeaveGroupAndChangeAdminController: SelectNewAdminTableViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupRightBarButton(with: "Leave the group")
  }
  
  override func rightBarButtonTapped() {
    super.rightBarButtonTapped()
    leaveTheGroupAndSetAdmin()
  }
}
