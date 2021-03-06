//
//  AddTodoItemViewController.swift
//  Todo
//
//  Created by woosungchu on 13/05/2017.
//  Copyright © 2017 woosungchu. All rights reserved.
//

import UIKit

class AddTodoItemViewController: UIViewController {
    
    var todoItem: TodoItem = TodoItem(itemName: "")

    @IBOutlet weak var doneButton: UIBarButtonItem!
    @IBOutlet weak var textField: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any!) {
        if(self.textField.text != ""){
            self.todoItem = TodoItem(itemName: self.textField.text!)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
