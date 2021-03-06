//
//  DrawerVCSetup.swift
//  ProtoView
//
//  Created by Roman Esin on 28/11/2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

extension DrawerViewController {
    func setupItemTableView() {
        itemTableView.delegate = self
        itemTableView.dataSource = self
        
        itemTableView.separatorStyle = .singleLine
        itemTableView.delaysContentTouches = false
        itemTableView.isScrollEnabled = true
    }
    
    // MARK: - Creating data for cells
    func createTableViewData() {
        let item1Data = ItemCellData(imageURL: "compass", title: "Compass", description: "Shows your direction")
        let item2Data = ItemCellData(imageURL: "upload", title: "Upload", description: "Uploads files to wherewhere you like")
        let item3Data = ItemCellData(imageURL: "face_ID", title: "Face ID Tester", description: "Test Face ID, yes just for that cool animation")
        let item4Data = ItemCellData(imageURL: "combo_chart", title: "Charts", description: "Create charts")
        let item5Data = ItemCellData(imageURL: "coins", title: "Coins", description: "Gives some money for ya")
        let item6Data = ItemCellData(imageURL: "twitter", title: "Twitter", description: "Post some news!")
        let item7Data = ItemCellData(imageURL: "settings", title: "Settings", description: "Customize your workflow")
        let item8Data = ItemCellData(imageURL: "plus", title: "Plus", description: "Add something")
        
        tableViewCellData[0].append(item1Data)
        tableViewCellData[0].append(item2Data)
        tableViewCellData[0].append(item3Data)
        tableViewCellData[0].append(item4Data)
        tableViewCellData[0].append(item5Data)
        tableViewCellData[0].append(item6Data)
        tableViewCellData[0].append(item7Data)
        tableViewCellData[0].append(item8Data)
        
        tableViewCellData[0].append(item1Data)
        tableViewCellData[0].append(item2Data)
        tableViewCellData[0].append(item3Data)
        tableViewCellData[0].append(item4Data)
        tableViewCellData[0].append(item5Data)
        tableViewCellData[0].append(item6Data)
        tableViewCellData[0].append(item7Data)
        tableViewCellData[0].append(item8Data)
        
        fullData = tableViewCellData
    }
}
