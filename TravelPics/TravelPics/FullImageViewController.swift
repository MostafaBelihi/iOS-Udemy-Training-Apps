//
//  FullImageViewController.swift
//  TravelPics
//
//  Created by Mostafa AlBelliehy on 24/11/2018.
//  Copyright © 2018 Mostafa AlBelliehy. All rights reserved.
//

import UIKit

class FullImageViewController: UIViewController {
	
	var fullImage = UIImage(named: "1");

	@IBOutlet weak var imgFullImage: UIImageView!
	@IBOutlet weak var scrollView: UIScrollView!
	
	override func viewDidLoad() {
        super.viewDidLoad()

		imgFullImage.image = fullImage;
    }

}
