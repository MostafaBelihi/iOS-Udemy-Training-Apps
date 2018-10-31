//
//  AddTaskViewController.swift
//  MiniTasks
//
//  Created by Mostafa AlBelliehy on 31/10/2018.
//  Copyright © 2018 Mostafa AlBelliehy. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
	
	@IBOutlet weak var taskPicker: UIPickerView!
	
	var tasks = [
		"Select task",
		"Pro Tip",
		"Coding Practice",
		"Special",
		"Important",
		"Error Rescue",
		"Secret Tools",
		"Advanced",
		"Topic to Follow"
		];
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
		// Adopt PickerView protocols
		taskPicker.dataSource = self;
		taskPicker.delegate = self;

		applyTheme();
    }
	
	/// PickerView
	func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
		return tasks.count;
	}
	
	func numberOfComponents(in pickerView: UIPickerView) -> Int {
		return 1;
	}
	
	func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
		return tasks[row];
	}
	
	func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
		
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
			
			// Header label
			if subView.tag == 1 {
				let control = subView as! UILabel;
				
				control.font = themeHeadingFont;
			}

			// Add Button
			if subView.tag == 2 {
				let control = subView as! UIButton;
				
				control.backgroundColor = themePrimaryColor;
				control.titleLabel?.font = themeButtonFont;
				control.layer.cornerRadius = 1.0;
				control.clipsToBounds = true;
			}
		}
	}

}
