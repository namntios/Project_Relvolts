//
//  MyFilesViewController.swift
//  testStackView_MUSIC
//
//  Created by thnam on 04/04/2024.
//

import UIKit

class MyFilesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellViewCollection", for: indexPath) as! CellViewCollection
        let data = images[indexPath.row]
        cell.imageViews.image = data
        return cell
        
    }
    
    @IBAction func buttonBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var textMyFiles: UILabel!
    
    let images = [
        UIImage(named: "imageCar1"),
        UIImage(named: "imageCar2"),
        UIImage(named: "imageCar3"),
        UIImage(named: "imageCar4"),
        UIImage(named: "imageCar5"),
        UIImage(named: "imageCar1"),
        UIImage(named: "imageCar2"),
        UIImage(named: "imageCar3"),
        UIImage(named: "imageCar4"),
        UIImage(named: "imageCar5"),
        UIImage(named: "imageCar1"),
        UIImage(named: "imageCar2"),
        UIImage(named: "imageCar3"),
        UIImage(named: "imageCar4"),
        UIImage(named: "imageCar5"),
        UIImage(named: "imageCar1"),
        UIImage(named: "imageCar2"),
        UIImage(named: "imageCar3"),
        UIImage(named: "imageCar4"),
        UIImage(named: "imageCar5"),
        UIImage(named: "imageCar5")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        // Do any additional setup after loading the view.
        
        textMyFiles.font = UIFont(name: "Jost-Bold", size: 24)
        textMyFiles.text = "My Files"
        self.navigationItem.setHidesBackButton(true, animated: true)
        
        
    }
    func setupUI() {
        // 1
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            
            layout.sectionInset = .init(top: 10, left: 10, bottom: 10, right: 10)
            layout.minimumLineSpacing = 20
            layout.minimumInteritemSpacing = 0
            layout.itemSize = .init(width: 150, height: 150)
        }
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "CellViewCollection", bundle: nil), forCellWithReuseIdentifier: "CellViewCollection")
    }
    
}

// 2
extension MyFilesViewController: UICollectionViewDelegateFlowLayout {
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//        return .init(top: 5, left: 5, bottom: 5, right: 5)
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        return 0
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//        return 0
//    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return .init(width: 190, height: 300)
//    }
 
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//        return .init(top: 0, left: 0, bottom: 0, right: 0)
//    }
//     
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        return 0
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//        return 0
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return .init(width: 143, height: 140)
   
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .init(top: 5, left: 5, bottom: 5, right: 5)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let screenWidth = UIScreen.main.bounds.width - 10
        return .init(width: screenWidth/2, height: (screenWidth/3)*5/4)
    }
    
    
    
    
    
    
    
}
// gender tableview, collectionview : row, item, gender layout()
