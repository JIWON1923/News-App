//
//  ViewController.swift
//  News_App
//
//  Created by Lee Ji Won on 2021/12/08.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var TableViewMain: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    } // data 개수
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init(style: .default, reuseIdentifier: "TableCellType")
        
        cell.textLabel?.text="\(indexPath.row)"
        return cell
    } // 어떤 데이터
    

    override func viewDidLoad() {
        super.viewDidLoad()
        TableViewMain.delegate = self
        TableViewMain.dataSource = self
    }
    //Table View
    

}

