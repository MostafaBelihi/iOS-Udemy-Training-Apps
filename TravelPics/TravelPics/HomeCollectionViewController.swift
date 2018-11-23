//
//  HomeCollectionViewController.swift
//  TravelPics
//
//  Created by Mostafa AlBelliehy on 23/11/2018.
//  Copyright © 2018 Mostafa AlBelliehy. All rights reserved.
//

import UIKit

var names = [String]();
var images = [UIImage]();

class HomeCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Data sources
		for i in 0...11 {
			images.append(UIImage(named: "\(i)")!);
		}
		for i in 0...11 {
			images.append(UIImage(named: "\(i)")!);
		}
		
		names.append("UK");
		names.append("India");
		names.append("US");
		names.append("Turkey");
		names.append("Egypt");
		names.append("France");
		names.append("Italy");
		names.append("France");
		names.append("UK");
		names.append("Germany");
		names.append("Canada");
		names.append("Japan");
		
		names.append("UK");
		names.append("India");
		names.append("US");
		names.append("Turkey");
		names.append("Egypt");
		names.append("France");
		names.append("Italy");
		names.append("France");
		names.append("UK");
		names.append("Germany");
		names.append("Canada");
		names.append("Japan");
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
		return 1;
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return names.count;
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "travelCell", for: indexPath) as! MyCollectionViewCell;
    
        // Configure the cell
		cell.lblName.text = names[indexPath.row];
		cell.imgPhoto.image = images[indexPath.row];
    
        return cell
    }

}
