//
//  ViewController.swift
//  ToDoApp
//
//  Created by 黒田健太郎 on 2018/12/19.
//  Copyright © 2018年 黒田健太郎. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var testTableView: UITableView!
    //UITableView、numberOfRowsInSectionの追加(表示するcell数を決める)
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //戻り値の設定(表示するcell数)
        return TodoContents.count
    }
    //UITableView、cellForRowAtの追加(表示するcellの中身を決める)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //変数を作る
        let TodoCell : UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "TodoCell", for: indexPath)
        //変数の中身を作る
        TodoCell.textLabel!.text = TodoContents[indexPath.row]
        //戻り値の設定（表示する中身)
        return TodoCell
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        let index = indexPath.row
        TodoContents.remove(at: index)
        tableView.reloadData()
        UserDefaults.standard.set( TodoContents, forKey: "TodoList" )
    }

    @IBOutlet weak var tableView: UITableView!
    // セルの編集状態を変更
    @IBAction func EditCell(_ sender: Any) {
        if isEditing {
            super.setEditing(false, animated: true)
            tableView.setEditing(false, animated: true)
        } else {
            super.setEditing(true, animated: true)
            tableView.setEditing(true, animated: true)
        }
    }
    // セルの行数
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TodoContents.count
    }
    
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


}

