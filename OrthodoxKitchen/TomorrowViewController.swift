//
//  TomorrowViewController.swift
//  OrthodoxKitchen
//
//  Created by Алексей Бабанов on 07.05.16.
//  Copyright © 2016 Алексей Бабанов. All rights reserved.
//

import UIKit

class TomorrowViewController: UITableViewController {
    
    let menuGroups = ["Салаты","Супы","Основные блюда","Напитки"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.layoutMargins = UIEdgeInsetsMake(0, 0, 0, 0);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuGroups.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "TodayTableViewCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! TodayTableViewCell
        
        // Fetches the appropriate meal for the data source layout.
        let menuGroup = menuGroups[(indexPath as NSIndexPath).row]
        
        cell.textLabel!.text = menuGroup
        cell.imageView?.image = UIImage(named:"item")
        //cell.ratingControl.rating = meal.rating
        
        return cell
    }
}
