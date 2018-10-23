//
//  SettingsViewController.swift
//  MyQuotes
//
//  Created by Mostafa AlBelliehy on 23/10/2018.
//  Copyright © 2018 Mostafa AlBelliehy. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

	@IBOutlet var labels: [UILabel]!
	
	@IBOutlet weak var segmentedTheme: UISegmentedControl!
	
	@IBOutlet weak var switchBorder: UISwitch!
	
	@IBOutlet weak var stepper: UIStepper!
	
	override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated);
		
		// Apply theme
		self.view.backgroundColor = theme;
	}

	@IBAction func segmentedChanged(_ sender: Any) {
		// Change theme
		if segmentedTheme.selectedSegmentIndex == 0
		{
			theme = UIColor.black;
			
			for label in labels {
				label.textColor = UIColor.white;
			}
			segmentedTheme.tintColor = UIColor.white;
			switchBorder.tintColor = UIColor.white;
			stepper.tintColor = UIColor.white;
		}
		else {
			theme = UIColor.white;

			for label in labels {
				label.textColor = UIColor.black;
			}
			segmentedTheme.tintColor = UIColor.black;
			switchBorder.tintColor = UIColor.black;
			stepper.tintColor = UIColor.black;
		}
		
		view.backgroundColor = theme;
	}

	@IBAction func switchChanged(_ sender: Any) {
	}
	
	
}
