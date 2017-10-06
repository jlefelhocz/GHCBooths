//
//  CollectionViewController.swift
//  GHCBooths
//
//  Created by Julianne Lefelhocz on 10/6/17.
//  Copyright © 2017 Julianne Lefelhocz. All rights reserved.
//

import UIKit
let Apple = Booth(name: "Apple", type: "company", description: "A /fruity/ company!", number: 1)
let NCWIT = Booth(name: "NCWIT", type: "non-profit", description: "A great community for women in tech.", number: 2)
let GeorgiaTech = Booth(name: "Georgia Institute of Technology", type: "university", description: "A fun place to learn about computer science!", number: 3)

var booths = [Apple, NCWIT, GeorgiaTech]

private let reuseIdentifier = "Cell"
fileprivate let sectionInsets = UIEdgeInsets(top: 50.0, left: 20.0, bottom: 50.0, right: 20.0)


class CollectionViewController: UICollectionViewController  {
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.register(CollectionViewCell.self, forCellWithReuseIdentifier: "cellId")
        //collectionView?.register(CollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
       // self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return booths.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        
        cell.backgroundColor = UIColor.lightGray
        cell.nameL.numberOfLines = 0
        cell.descriptionL.numberOfLines = 0
        cell.nameL.preferredMaxLayoutWidth = (view.frame.width - sectionInsets.left * 3)/2
        cell.descriptionL.preferredMaxLayoutWidth = (view.frame.width - sectionInsets.left * 3)/2
        cell.nameL.text = booths[count].name
        cell.descriptionL.text = booths[count].description
        // Configure the cell
        
        count = count + 1
        return cell
    }
}
    
extension CollectionViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        let padding = sectionInsets.left * 3
        let width = view.frame.width - padding
        let itemWidth = width/2
        return CGSize(width: itemWidth, height: itemWidth)
        
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return sectionInsets
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInsets.left
    }
        
}

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */


