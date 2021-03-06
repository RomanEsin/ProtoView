//
//  ItemCellTableViewCell.swift
//  ProtoView
//
//  Created by Roman Esin on 22.11.2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {
    
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var objectNameLabel: UILabel!
    @IBOutlet weak var objectDescriptionLabel: UILabel!
    
    var delegate: ItemCellDelegate?
    var cellData: ItemCellData!
    var indexPath: IndexPath!
    
    var tableView: UITableView {
        return self.superview as! UITableView
    }
    
    var itemImage: UIImage? {
        get { return itemImageView.image }
        set { itemImageView.image = newValue }
    }
    
    var itemTitle: String {
        get { return objectNameLabel.text! }
        set { objectNameLabel.text = newValue }
    }
    
    var itemDescription: String {
        get { return objectDescriptionLabel.text! }
        set { objectDescriptionLabel.text = newValue }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    func setup(withData data: ItemCellData = ItemCellData(imageURL: "nil", title: "Unnamed", description: "No description")) {
        cellData = data
        if data.imageURL != "nil" {
            itemImageView.image = UIImage(named: data.imageURL)!
        }
        objectNameLabel.text = data.title
        objectDescriptionLabel.text = data.description
        
        let longPressGR = UILongPressGestureRecognizer(target: self, action: #selector(longPress(recognizer:)))
        longPressGR.minimumPressDuration = 0.23
        
        addGestureRecognizer(longPressGR)
    }
}
