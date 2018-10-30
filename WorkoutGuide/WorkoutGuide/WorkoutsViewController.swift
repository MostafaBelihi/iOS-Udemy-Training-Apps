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
