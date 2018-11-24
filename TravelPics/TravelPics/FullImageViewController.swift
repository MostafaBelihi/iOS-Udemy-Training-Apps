//
//  FullImageViewController.swift
//  TravelPics
//
//  Created by Mostafa AlBelliehy on 24/11/2018.
//  Copyright © 2018 Mostafa AlBelliehy. All rights reserved.
//

import UIKit

class FullImageViewController: UIViewController, UIScrollViewDelegate {
	
	var fullImage = UIImage(named: "1");

	@IBOutlet weak var imgFullImage: UIImageView!
	@IBOutlet weak var scrollView: UIScrollView!
	
	override func viewDidLoad() {
        super.viewDidLoad()
		
		scrollView.delegate = self;

		// Load image
		imgFullImage.image = fullImage;
		
		// Configure zoom
		scrollView.minimumZoomScale = 1;
		scrollView.maximumZoomScale = 4;
		scrollView.contentSize = imgFullImage.frame.size;
    }
	
	// Image to zoom
	func viewForZooming(in scrollView: UIScrollView) -> UIView? {
		return imgFullImage;
	}

}
