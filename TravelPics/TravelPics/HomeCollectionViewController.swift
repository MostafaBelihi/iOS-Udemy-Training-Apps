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

class HomeCollectionViewController: UICollectionViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UICollectionViewDelegateFlowLayout {

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

	@IBAction func openCamera(_ sender: Any) {
		// Launching camera
		if UIImagePickerController.isSourceTypeAvailable(.camera) {
			let picker = UIImagePickerController();
			picker.sourceType = .camera;
			picker.allowsEditing = true;
			picker.delegate = self;
			
			present(picker, animated: true);
		}
		else {
			let alert = UIAlertController(title: "Camera Unavailable", message: "You do not have a camera on your device!", preferredStyle: .alert);
			let okAction = UIAlertAction(title: "OK", style: .default, handler: nil);
			alert.addAction(okAction);
			
			present(alert, animated: true, completion: nil);
		}
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
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
		return CGSize(width: (collectionView.frame.size.width / 2) - 10, height: (collectionView.frame.size.width / 2) - 10);
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		// VC to launch
		let destinationVC = segue.destination as! FullImageViewController;
		
		// Getting selected image
		//   Unlike TableView, CollectionView gets an array of selected items
		if let indexPaths = collectionView?.indexPathsForSelectedItems {
			let selectedIndexPath = indexPaths[0];		// picking the first item in the array
			
			// Assign image to destinationVC
			destinationVC.fullImage = images[selectedIndexPath.row];
		}
	}
	
	@IBAction func close(segue: UIStoryboardSegue) {
		
	}

}
