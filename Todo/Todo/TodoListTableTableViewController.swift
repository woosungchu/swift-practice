//
//  TodoListTableTableViewController.swift
//  Todo
//
//  Created by woosungchu on 13/05/2017.
//  Copyright © 2017 woosungchu. All rights reserved.
//

import UIKit

class TodoListTableTableViewController: UITableViewController {
    
    var todoItems: [TodoItem] = []
    
    @IBAction func unwindAndAddToList(segue: UIStoryboardSegue){
        let source = segue.source as! AddTodoItemViewController
        let todoItem:TodoItem = source.todoItem
        
        if todoItem.itemName != ""{
            self.todoItems.append(todoItem)
            self.tableView.reloadData()
        }
    }
    
    @IBAction func unwindToList(segue: UIStoryboardSegue){
        print("unwinding")
    }
    
    func loadInitialData(){
        todoItems = [
            TodoItem(itemName: "Go to the dentist"),
            TodoItem(itemName: "Fetch groceries"),
            TodoItem(itemName: "Sleep")
        ]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInitialData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoItems.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListPrototypeCell", for: indexPath) as UITableViewCell
        let todoItem = todoItems[indexPath.row]
        
        cell.textLabel?.text = todoItem.itemName
        
        if(todoItem.completed){
            cell.accessoryType = UITableViewCellAccessoryType.checkmark;
        } else {
            cell.accessoryType = UITableViewCellAccessoryType.none;
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        
        let tappedItem = todoItems[indexPath.row] as TodoItem
        tappedItem.completed = !tappedItem.completed
        
        tableView.reloadRows(at: [indexPath], with: UITableViewRowAnimation.none)
        
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
