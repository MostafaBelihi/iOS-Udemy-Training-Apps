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
	@IBOutlet weak var addTaskButton: UIButton!
	@IBOutlet weak var datePicker: UIDatePicker!
	
	var allTasks = [
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
	
	var dateFormatter = DateFormatter();
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
		// Adopt PickerView protocols
		taskPicker.dataSource = self;
		taskPicker.delegate = self;
		
		// Button is disabled by default
		addTaskButton.isEnabled = false;
		
		// Date format
		dateFormatter.dateFormat = "dd/MM/yyyy HH:mm";
		
		// Minimum date
		datePicker.minimumDate = Date();

		applyTheme();
    }
	
	@IBAction func addClicked(_ sender: Any) {
		// Add new
		tasks.append(allTasks[taskPicker.selectedRow(inComponent: 0)]);
		dates.append(dateFormatter.string(from: datePicker.date));
		
		// Close view
		dismiss(animated: true, completion: nil)
	}
	
	/// PickerView
	func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
		return allTasks.count;
	}
	
	func numberOfComponents(in pickerView: UIPickerView) -> Int {
		return 1;
	}
	
	func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
		return allTasks[row];
	}
	
	func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
		if row == 0 {
			addTaskButton.isEnabled = false;
		}
		else {
			addTaskButton.isEnabled = true;
		}
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
				control.layer.cornerRadius = 5;
				control.layer.borderColor = themeSecondaryColor.cgColor;
				control.layer.borderWidth = 1.0;
				control.clipsToBounds = true;
			}
		}
	}

}
