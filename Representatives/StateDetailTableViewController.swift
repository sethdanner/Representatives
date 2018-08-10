//
//  StateDetailTableViewController.swift
//  Representatives
//
//  Created by Seth Danner on 8/10/18.
//  Copyright © 2018 Seth Danner. All rights reserved.
//

import UIKit

class StateDetailTableViewController: UITableViewController {
    
    var state: String?
    var representatives: [Representative] = [] {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return representatives.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "representativeCell", for: indexPath) as? RepresentativeTableViewCell ?? RepresentativeTableViewCell()
        
        cell.representative = representatives[indexPath.row]

        return cell
    }
}
