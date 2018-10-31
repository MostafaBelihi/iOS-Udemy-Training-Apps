//
//  AddTaskViewController.swift
//  MiniTasks
//
//  Created by Mostafa AlBelliehy on 31/10/2018.
//  Copyright © 2018 Mostafa AlBelliehy. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

		applyTheme();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

	// Theme
	func applyTheme() {
		// View
		view.backgroundColor = themeBackgroundColor;
		
		// Controls
		let allViews = view.subviews;
		
		for subView in allViews {
			// Buttons
			if subView is UIButton {
				let control = subView as! UIButton;
				
				control.setTitleColor(themeSecondaryColor, for: .normal);
			}
		}
	}

}
