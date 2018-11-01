//
//  ViewController.swift
//  MiniTasks
//
//  Created by Mostafa AlBelliehy on 31/10/2018.
//  Copyright © 2018 Mostafa AlBelliehy. All rights reserved.
//

import UIKit

var tasks = [String]();
var dates = [String]();

class ViewController: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		applyTheme();
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	// Unwind Segue
	@IBAction func close(segue: UIStoryboardSegue) {
		
	}
	
	// Theme
	func applyTheme() {
		// View
		view.backgroundColor = themeBackgroundColor;
		
		// Controls
		let allViews = view.subviews;
		
		for subView in allViews {
			// Segmenter
			if subView is UISegmentedControl {
				let control = subView as! UISegmentedControl;
				
				control.layer.backgroundColor = themeBackgroundColor.cgColor;
				control.tintColor = themeSecondaryColor;
			}
			
			// Button
			if subView is UIButton {
				let control = subView as! UIButton;
				
				control.layer.backgroundColor = themeSecondaryColor.cgColor;
				control.layer.cornerRadius = 25.0;
			}
		}
	}

}

