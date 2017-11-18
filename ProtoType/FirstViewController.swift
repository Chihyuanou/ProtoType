//
//  FirstViewController.swift
//  ProtoType
//
//  Created by mac on 2017/11/17.
//  Copyright © 2017年 mac. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var postCollectionView: UICollectionView!
    var test = "test" // for test only
    
    var posts:[Post] = [
        Post(blogName:"Marra's cuisine", name: "Marra", postTime: "20171110 15:20", content: "無論天晴天雨，不管花開花落，天天天天，都是讀書的好日子。", type: ["日式料理", "牛排"], commentCount: 2, likeCount: 3, postPhotos:["teakha.jpg", "cafeloisl.jpg", "petiteoyster.jpg"], photoCount: 5),
        Post(blogName:"An's kitchen", name: "An", postTime: "20171102 15:20", content:"再沒有一種關係，是比你和你自己的關係更長久的。而且，再沒有一種愛，是比愛你自己更重要的。", type: ["吃到飽", "牛排"], commentCount: 3, likeCount: 3, postPhotos:["forkeerestaurant.jpg", "posatelier.jpg",], photoCount: 3),
        Post(blogName:"Ou's blog", name: "Ou", postTime: "20170810 15:20", content: "微笑是天使的密語，所以，親愛的，常常對自己微笑，好運也就會常常對你微笑。", type: ["日式料理"], commentCount: 6, likeCount: 2, postPhotos:["bourkestreetbakery.jpg", "haighschocolate.jpg", "palominoespresso.jpg"], photoCount: 2),
        Post(blogName:"Marra's cuisine", name: "Marra", postTime: "20171110 12:00", content: "只有在獨處的時候，你才會掘出深埋的智慧，才能感覺自己正在靜默地發光。", type: ["韓式料理", "小吃"], commentCount: 13, likeCount: 3, postPhotos:["upstate.jpg", "traif.jpg", "grahamavenuemeats.jpg"], photoCount: 1),
        Post(blogName:"An's kitchen", name: "An", postTime: "20171010 05:20", content:"先愛自己吧!如果你就是自己的陽光、空氣和水，愛自然會像花朵一樣，在你的世界裡燦爛盛開。", type: ["義大利麵"], commentCount: 2, likeCount: 12, postPhotos:["wafflewolf.jpg", "fiveleaves.jpg"], photoCount: 4),
        Post(blogName:"Ou's blog", name: "Ou", postTime: "20171120 09:00", content: "讓自己的心像一條悠閒的流水吧，一次只做一件事情，只有一個流向，只有一個當下要去的地方。", type: ["牛肉麵", "小吃"], commentCount: 1, likeCount: 2, postPhotos:["cafelore.jpg", "confessional.jpg"], photoCount: 3),
        Post(blogName:"Marra's cuisine", name: "Marra", postTime: "20171110 15:20", content: "有時候，什麼也不說，才能聆聽來自宇宙的聲音。有時候，什麼也不做，才能把整個世界放進你的手心。", type: ["百元熱炒"], commentCount: 1, likeCount: 21, postPhotos:["barrafina.jpg", "donostia.jpg"], photoCount: 2),
        Post(blogName:"An's kitchen", name: "An", postTime: "20171110 15:20", content:"星星因天空而存在。魚群因海洋而存在。你因對自己的愛而存在。", type: ["咖啡廳", "工作"], commentCount: 2, likeCount: 1, postPhotos:["royaloak.jpg", "caskpubkitchen.jpg"], photoCount: 5),
        Post(blogName:"Ou's blog", name: "Ou", postTime: "20171110 15:20", content: "什麼都在發生，也什麼都沒發生。一切充滿了美麗的奧祕。一切都是繽紛的寂靜。", type: ["牛排"], commentCount: 2, likeCount: 3, postPhotos:["cafedeadend.jpg", "homei.jpg"], photoCount: 8)
    ]
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return posts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mainPostCell", for: indexPath) as! PostCollectionViewCell
        // Configure the cell...
        cell.blogNameLabel.text = posts[indexPath.row].blogName
        cell.nameLabel.text = posts[indexPath.row].name
        cell.postTimeLabel.text = posts[indexPath.row].postTime
        cell.typeLabel.text = posts[indexPath.row].type[0]
        cell.contentLabel.text = posts[indexPath.row].content
        cell.commentCountLabel.text = String(posts[indexPath.row].commentCount) + "個留言"
        cell.likeCountLabel.text = String(posts[indexPath.row].likeCount) + "個叉"
        cell.firstPhotoImageView.image = UIImage(named: posts[indexPath.row].postPhotos[0])
        return cell
    }
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        postCollectionView.delegate = self
        postCollectionView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

