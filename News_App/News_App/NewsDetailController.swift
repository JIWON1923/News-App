//
//  NewsDetailController.swift
//  News_App
//
//  Created by Lee Ji Won on 2021/12/09.
//

import UIKit
class NewsDetailController: UIViewController{
    
    @IBOutlet weak var ImageMain: UIImageView!
    @IBOutlet weak var LabelMain: UILabel!
    
    var imageUrl: String?
    var desc: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //값이 있으면
        if let img = imageUrl{
            // 이미지 보여주기 -> Data 사용
            if let data = try? Data(contentsOf: URL(string: img )!){
                //Main thread
                DispatchQueue.main.async {
                    self.ImageMain.image = UIImage(data: data)
                }
                
            }
            
        }
        if let d = desc{
            // 내용 보여주기
            self.LabelMain.text = d
        }
    }
}
