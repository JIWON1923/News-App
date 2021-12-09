//
//  ViewController.swift
//  News_App
//
//  Created by Lee Ji Won on 2021/12/08.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var TableViewMain: UITableView!
    
    var newsData: Array<Dictionary<String, Any>>?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let news = newsData{
            return news.count
        }
        else{
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = TableViewMain.dequeueReusableCell(withIdentifier: "Type1", for: indexPath) as! Type1 // Type1이 자식임이 확실하기 때문
        let idx = indexPath.row
        if let news = newsData{
            let row = news[idx]
            if let r = row as? Dictionary<String, Any>{
                if let title = r["title"] as? String{
                    cell.LableText.text = title // 앞에 Optional을 없앰
                }
            }
        }
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TableViewMain.delegate = self
        TableViewMain.dataSource = self
        getNews()
    }
    
    //Click
    //func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    //    print(indexPath.row)
    //}
    
    func getNews(){
        let task = URLSession.shared.dataTask(with: URL(string: "https://newsapi.org/v2/everything?q=apple&from=2021-12-07&to=2021-12-07&sortBy=popularity&apiKey=8a063f28833944b1a2ab501af42b18b2")!) { (data, response, error )in
            if let dataJson = data{
                //json parsing
                do{
                    //Dictionary : json 처리
                    let json = try JSONSerialization.jsonObject(with: dataJson, options: []) as! Dictionary<String, Any>
                    let articles = json["articles"] as! Array<Dictionary<String, Any>> // 배열에 JSON이 들어있다는 사실을 알고 있음.
                    self.newsData = articles
                    
                    DispatchQueue.main.async {
                        self.TableViewMain.reloadData() // 통보
                    } // UI로 표현할 것을 의미
                  
                }
                catch{
                }
            }
        }
        task.resume()
    }
}
