//
//  ViewController.swift
//  tableView
//
//  Created by 所　紀彦 on 2019/06/03.
//  Copyright © 2019 所　紀彦. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet var tableView: UITableView!
    //ランダムになる値を用意する
    //let number = Array(1...100)
    let number = Int.random(in: 0..<100)
    //let number : as; String =
    //let number = [String]()
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
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell",for: indexPath)
         as! TableViewCell

        
//        let nowIndexPathString = number[indexPath.row]
//        cell.label.text = nowIndexPathString[number]
        //cell.textLabel?.text = String(number)
        
        cell.label.text = String(number)
        return cell
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
        
         tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "MyCell")
    }
    



}

