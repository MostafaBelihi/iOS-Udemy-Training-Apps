//
//  WorkoutsViewController.swift
//  WorkoutGuide
//
//  Created by Mostafa AlBelliehy on 30/10/2018.
//  Copyright © 2018 Mostafa AlBelliehy. All rights reserved.
//

import UIKit

// Item details (PList item)
var details = [String]();

class WorkoutsViewController: UIViewController {
	
	var workoutDict = [String:[String]]();
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		self.title = "Choose Workout";
		
		// Get PList data
		let workoutPlist = appDelegate.getWorkoutsPlist();
		
		// Catching the doctionary
		workoutDict = workoutPlist as! [String:[String]];
		
		// Extracting dictionary in an array
		let titles = workoutPlist.allKeys;
		
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
				control.setTitleColor(appColor, for: .normal);
				control.titleLabel?.font = UIFont(name: "HelveticaNeue-CondensedBlack", size: 20);
				control.layer.borderColor = appColor.cgColor;
				control.layer.borderWidth = 1.5;
				control.layer.cornerRadius = 5;
				control.clipsToBounds = true;
				
				// Registering an event (action) for the button
				control.addTarget(self, action: #selector(WorkoutsViewController.goToDetails(sender:)), for: .touchUpInside);
			}
		}
	}
	
	// Event habdler for buttons
	@objc func goToDetails(sender: UIButton)
	{
		// Note: Button title is the dict key
		if let title = sender.titleLabel?.text, let items = workoutDict[title]
		{
			// Present next view
			details = items;
			performSegue(withIdentifier: "details", sender: self);
		}
	}
	
	// Unwind Sqgue
	@IBAction func close(segue: UIStoryboardSegue)
	{
		
	}
	
}
