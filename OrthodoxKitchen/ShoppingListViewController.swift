//
//  ShoppingListViewController.swift
//  OrthodoxKitchen
//
//  Created by Алексей Бабанов on 09.05.16.
//  Copyright © 2016 Алексей Бабанов. All rights reserved.
//

import UIKit

class ShoppingListViewController: MainViewController {
    //let navigationController = application.windows[0].rootViewController as UINavigationController
    let menuGroups = ["Салат романо - 4 стакана","Помидоры - 4 штуки","Авокадо - 1 штука","Красный лук - ¼ головки", "Маслины без косточек - 12 штук", "Листья базилика - 8 штук"]
    
    /*
     
     Салат романо - 4 стакана
     Помидоры - 4 штуки
     Авокадо - 1 штука
     Красный лук - ¼ головки
     Маслины без косточек - 12 штук
     Листья базилика - 8 штук
     Салатная заправка итальянская - 6 столовых ложек
     */
    
    
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
        let cellIdentifier = "ShoppingListViewController"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! TodayTableViewCell
        
        // Fetches the appropriate meal for the data source layout.
        let menuGroup = menuGroups[(indexPath as NSIndexPath).row]
        
        cell.textLabel!.text = menuGroup
        cell.imageView?.image = UIImage(named:"item")
        //cell.ratingControl.rating = meal.rating
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let ident = segue.identifier
        print(ident)
    }
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        let delete = UITableViewRowAction(style: UITableViewRowActionStyle(), title: "Удалить") { (action, indexPath) in
            // delete item at indexPath
        }
        /*
        let share = UITableViewRowAction(style: .Normal, title: "Disable") { (action, indexPath) in
            // share item at indexPath
        }
        */
        
        //share.backgroundColor = UIColor.blueColor()
        
        return [delete]
    }
    
}
    
