//
//  ViewController.swift
//  Todoey
//
//  Created by Amornchot Singh on 7/21/18.
//  Copyright © 2018 Amornchot Singh. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
    
    let itemArray = ["Find Mike", "Buy Eggos", "Destroy Demogorgon"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //MARK - Table View DataSource Methods.
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //Which IndexPath? Current index path table is looking to populate
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    //MARK - TableView Delegate Methods
    //Shows where u are at.
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(itemArray[indexPath.row])
        

        //check to see if it has accessory type
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark{
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            //Once click th cell, chceck mark appears.
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        //Flashes a bit then disappears.
        tableView.deselectRow(at: indexPath, animated: true)
        
        
    }


}

