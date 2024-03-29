//
//  TableViewController.swift
//  tableView
//
//  Created by 所　紀彦 on 2019/06/06.
//  Copyright © 2019 所　紀彦. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    
    //ランダム変数を宣言
    //var array: [Int] = [1...20]
   var int = Int.random(in: 1..<100)
    
    let numbers : [Int] = [Int(arc4random())]
    

    //ランダムな値を格納するための配列を20個作る
    var array = Array(1...100)
    var shuffledArray: [Int] = []
    var array2 : [Int] = []
    
    
    
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
        
        //hairetsu()
        //ラベルに配列に入れたランダムな値20個を代入する
        
        //cell.label.text = String(int)
       //cell.label.text =  String(Int.random(in: 0..<100))
        //array = [int]
        array2 = [int]
        shuffle()
        //こうしたい↓
        //cell.label.text = "\(array[indexPath.row])"
    cell.label.text  = "\(shuffledArray[indexPath.row])"
        
        return cell
    }
    
    //空の配列２０個にランダムな値をそれぞれ入れるメソッドを作る
    func shuffle(){
        while array.count > 0 {
            let index = Int(arc4random()) % array.count
            shuffledArray.append(array[index])
            array.remove(at: index)
        }
    }
    
    
    
    override func viewWillAppear(_ animated: Bool)  {
        
        super.viewWillAppear(true)

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


