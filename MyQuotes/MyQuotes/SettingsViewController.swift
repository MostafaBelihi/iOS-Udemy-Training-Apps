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
		
		// Read defaults
		let themeValue = defaults.integer(forKey: "theme");
		
		if themeValue == 0
		{
			theme = UIColor.black;
		}
		else
		{
			theme = UIColor.white;
		}
		
		imageBorder = defaults.bool(forKey: "imageBorder");
		
		applyTheme();

		// Impact settings controls
		segmentedTheme.selectedSegmentIndex = themeValue;
		switchBorder.isOn = imageBorder;
	}
	
	@IBAction func segmentedChanged(_ sender: Any) {
		// Change theme
		let themeValue = segmentedTheme.selectedSegmentIndex;
		defaults.set(themeValue, forKey: "theme");		// save theme
		
		if themeValue == 0
		{
			theme = UIColor.black;
		}
		else
		{
			theme = UIColor.white;
		}

		applyTheme();
	}
	
	@IBAction func switchChanged(_ sender: Any) {
		// Capture value from boolean isOn
		imageBorder = switchBorder.isOn;
		defaults.set(imageBorder, forKey: "imageBorder");
	}
	
	func applyTheme()
	{
		// Reverse color
		var foreColor: UIColor;
		
		if theme == UIColor.black
		{
			foreColor = UIColor.white;
		}
		else
		{
			foreColor = UIColor.black;
		}
		
		// Apply Theme
		view.backgroundColor = theme;
		
		for label in labels {
			label.textColor = foreColor;
		}

		segmentedTheme.tintColor = foreColor;
		switchBorder.tintColor = foreColor;
		stepper.tintColor = foreColor;
	}
	
	
}
