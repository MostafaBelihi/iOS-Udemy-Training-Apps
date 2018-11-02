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

class ViewController: UIViewController, UITableViewDataSource {

	@IBOutlet weak var tableView: UITableView!
		
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// Adopt protocols
		tableView.dataSource = self;
		
		applyTheme();
	}
	
	override func viewWillAppear(_ animated: Bool) {
		// Refresh TableView
		tableView.reloadData();
	}
	
	/// TableView
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		// Gets a recently hidden cell in display (with scrolling) to be reused for new cell
		let cell = tableView.dequeueReusableCell(withIdentifier: "taskCell", for: indexPath);
		
		cell.textLabel?.text = "\(indexPath.row + 1). \(tasks[indexPath.row])";
		cell.detailTextLabel?.text = dates[indexPath.row];
		
		return cell;
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return tasks.count;
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

