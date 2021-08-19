//
//  DetailViewController.swift
//  Cuser
//
//  Created by 岩田海靖 on 2021/08/17.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var collectionVIew: UICollectionView!
    @IBOutlet weak var collectionViewFlowLayout: UICollectionViewFlowLayout!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }

}

extension DetailViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DetailCollectionViewCell", for: indexPath) as! DetailCollectionViewCell
        cell.detailImageView.image = UIImage(named:"IMG_0527")
        return cell

    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // 横方向のスペース調整
        let cellSize:CGFloat = self.view.bounds.width
        // 正方形で返すためにwidth,heightを同じにする
        return CGSize(width: cellSize, height: cellSize)
    }
    
}
