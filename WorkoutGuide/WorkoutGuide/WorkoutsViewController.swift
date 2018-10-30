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
		
		self.title = "Choose Workout";
		
		// Path to the PList file
		let path = Bundle.main.path(forResource: "Workouts", ofType: "plist");
		
		if let validPath = path
		{
			let dict = NSDictionary(contentsOfFile: validPath);
			
			if let validDict = dict
			{
				// Extracting dictionary in an array
				let titles = validDict.allKeys;

				/// Accessing all buttons
				let allViews = view.subviews;
				
				for i in 0..<allViews.count
				{
					if allViews[i].tag == 10 //is Button
						// 'is' here checks the class of the view (distinguish controls by type)
						// tag is used to distinguish specific controls
					{
						// Accessing the control
						let control = allViews[i] as! UIButton		// I know it's a button
						
						// Button title
						control.setTitle(titles[i] as? String, for: .normal);
						
						// Styling
						control.setTitleColor(UIColor(red: 0.99, green: 0.29, blue: 0.34, alpha: 1.00), for: .normal);
						control.titleLabel?.font = UIFont(name: "HelveticaNeue-CondensedBlack", size: 20);
						control.layer.borderColor = UIColor(red: 0.99, green: 0.29, blue: 0.34, alpha: 1.00).cgColor;
						control.layer.borderWidth = 1.5;
						control.layer.cornerRadius = 5;
						control.clipsToBounds = true;
					}
				}
			}
		}
    }
}
