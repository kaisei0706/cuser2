//
//  STListTableViewCell.swift
//  Cuser
//
//  Created by 岩田海靖 on 2021/08/17.
//

import UIKit

class STListTableViewCell: UITableViewCell {

    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var collectionViewFlowLayout: UICollectionViewFlowLayout!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        collectionViewFlowLayout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 100, right: 0)
        let nib = UINib(nibName: "STCollectionViewCell", bundle: nil) // カスタムセルクラス名で`nib`を作成する
        
        collectionView.register(nib, forCellWithReuseIdentifier: "STCollectionViewCell")
    }
    
    func setCollectionViewDataSourceDelegate
        <D: UICollectionViewDataSource & UICollectionViewDelegate>
        (dataSourceDelegate: D, forRow row: Int) {

        collectionView.delegate = dataSourceDelegate
        collectionView.dataSource = dataSourceDelegate
        collectionView.reloadData()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
