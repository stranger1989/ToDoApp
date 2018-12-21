//
//  ThirdController.swift
//  ToDoApp
//
//  Created by 黒田健太郎 on 2018/12/20.
//  Copyright © 2018年 黒田健太郎. All rights reserved.
//

import UIKit

class ThirdController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        if UserDefaults.standard.object(forKey: "TodoList") != nil {
            TodoContents = UserDefaults.standard.object(forKey: "TodoList") as! [String]
        }
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
