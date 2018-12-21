//
//  SecondController.swift
//  ToDoApp
//
//  Created by 黒田健太郎 on 2018/12/19.
//  Copyright © 2018年 黒田健太郎. All rights reserved.
//

import UIKit
var TodoContents = [String]()

class SecondController: UIViewController {
    
    @IBOutlet weak var TodoTextField: UITextView!
    @IBAction func TodoAddButton(_ sender: Any) {
        TodoContents.append(TodoTextField.text!)
        TodoTextField.text = ""
        UserDefaults.standard.set( TodoContents, forKey: "TodoList")
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
