//
//  TableViewController.swift
//  tableView
//
//  Created by 所　紀彦 on 2019/06/06.
//  Copyright © 2019 所　紀彦. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    //@IBOutlet var tableView: UITableView!
    //ランダムになる値を用意する
    let number = Array(1...100)
    
    //let number = Int.random(in: 0..<100)
    //let number : as; String =
    //let number = [String]
    // 空の配列を宣言
    //    var number: [Int] = []
    //
    //    for (var i = 0; i < 10; i++) {
    //
    //    //乱数を生成
    //    var rand = Int(arc4random_uniform(UInt32(10)))
    //
    //    //乱数を配列に格納
    //    Array.append(rand)
    //    }
    
    
    //let number = arc4random() % 10
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "MyCell")

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 20
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell",for: indexPath)
            as! TableViewCell
        
        
        let randomElement = number.randomElement()
        
        //        let nowIndexPathString = number[indexPath.row]
        //        cell.label.text = nowIndexPathString[number]
        //cell.textLabel?.text = String(number)
        
        //cell.label.text = Int.random(in: 0..<100)
        cell.label.text = ("\(number[indexPath.row])")
        
        return cell
    }
    
    override func viewWillAppear(_ animated: Bool)  {
        
        super.viewWillAppear(true)
        //        if saveData.array(forKey: "WORD") != nil {
        //            wordArray = saveData.array(forKey: "WORD") as! [Dictionary<String,String>]
        //        }
       // tableView.reloadData()
    }
    
    
}

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


