//
//  ViewController.swift
//  app-Listy
//
//  Created by Bailey Aldridge on 14/1/19.
//  Copyright © 2019 Cody Philipp. All rights reserved.
//

import UIKit

class ListTableVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Number of cells
        return imageArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Return configured cell
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "parallaxCell", for: indexPath) as? ParallaxCell else { return UITableViewCell() }
        cell.configureCell(withImage: imageArray[indexPath.row], withTitle: nameArray[indexPath.row])
        return cell
    }

}

