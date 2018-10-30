//
//  WorkoutsViewController.swift
//  WorkoutGuide
//
//  Created by Mostafa AlBelliehy on 30/10/2018.
//  Copyright © 2018 Mostafa AlBelliehy. All rights reserved.
//

import UIKit

class WorkoutsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
		
		// Applying styles to certain controls
		// Accessing controls on the view
		let allViews = view.subviews;
		
		for subView in allViews
		{
			if subView.tag == 10 //is Button
				// 'is' here checks the class of the view (distinguish controls by type)
				// tag is used to distinguish specific controls
			{
				// Accessing the control
				let control = subView as! UIButton		// I know it's a button
				
				// Styling
				control.setTitleColor(UIColor.white, for: .normal);
				control.titleLabel?.font = UIFont(name: "HelveticaNeue-CondensedBlack", size: 20);
				control.layer.borderColor = UIColor(red: 0.99, green: 0.29, blue: 0.34, alpha: 1.00).cgColor;
				control.layer.borderWidth = 1.5;
				control.layer.cornerRadius = 5;
				control.clipsToBounds = true;
			}
		}

		// Path to the PList file
		let path = Bundle.main.path(forResource: "Workouts", ofType: "plist");
		
		if let validPath = path
		{
			let dict = NSDictionary(contentsOfFile: validPath);
			
			if let validDict = dict
			{
				print(validDict);
			}
		}
    }
}
