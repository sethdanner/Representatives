//
//  RepresentativeTableViewCell.swift
//  Representatives
//
//  Created by Seth Danner on 8/10/18.
//  Copyright © 2018 Seth Danner. All rights reserved.
//

import UIKit

class RepresentativeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var partyLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var districtLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var officeLabel: UILabel!
    @IBOutlet weak var linkLabel: UILabel!
    
    var representative: Representative? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        
        nameLabel.text = representative?.name
        partyLabel.text = representative?.party
        stateLabel.text = representative?.state
        districtLabel.text = representative?.district
        phoneLabel.text = representative?.phone
        officeLabel.text = representative?.office
        linkLabel.text = representative?.link
    }
}
