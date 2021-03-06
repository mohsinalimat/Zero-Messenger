//
//  SelectParticipantsViewController+SearchHandlers.swift
//  ZeroMessger
//
//  Created by Sandeep Mukherjee on 3/11/20.
//  Copyright © 2020 Sandeep Mukherjee. All rights reserved.
//

import UIKit

extension SelectParticipantsViewController: UISearchBarDelegate, UISearchControllerDelegate, UISearchResultsUpdating {
  
  func updateSearchResults(for searchController: UISearchController) {}
  
  func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
    searchBar.text = nil
    filteredUsers = users
    guard users.count > 0 else { return }
    searchBar.setShowsCancelButton(false, animated: true)
    searchBar.resignFirstResponder()
    tableView.reloadData()
  }
  
  func searchBarShouldBeginEditing(_ searchBar: UISearchBar) -> Bool {
    searchBar.keyboardAppearance = ThemeManager.currentTheme().keyboardAppearance
    searchBar.setShowsCancelButton(true, animated: true)

    return true
  }
  
  func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
    filteredUsers = searchText.isEmpty ? users : users.filter({ (User) -> Bool in
      return User.name!.lowercased().contains(searchText.lowercased())
    })

    tableView.reloadData()
  }
}

extension SelectParticipantsViewController { /* hiding keyboard */
  
   func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
    searchBar?.resignFirstResponder()
  }
  
  func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
    self.searchBar?.endEditing(true)
  }
}


