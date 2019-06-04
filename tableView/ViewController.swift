//
//  ViewController.swift
//  tableView
//
//  Created by 所　紀彦 on 2019/06/03.
//  Copyright © 2019 所　紀彦. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet var table: UITableView!
    
    //ランダムになる値を用意する
    let number = Array(1...100)
    //let number = Int.random(in: 0..<20)
    //var number:[String] = [1...100]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default , reuseIdentifier: "MyCell")

        cell.textLabel?.text = "\(self.number[indexPath.row])"
        //cell.textLabel?.text = String(number)
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let cell = self.tableView(tableView: table, didSelectRowAtIndexPath: indexPath)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//       table.delegate = self
//        table.dataSource = self
    }


}

