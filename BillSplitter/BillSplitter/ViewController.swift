//
//  ViewController.swift
//  BillSplitter
//
//  Created by Mostafa AlBelliehy on 12/10/2018.
//  Copyright © 2018 Mostafa AlBelliehy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	@IBOutlet weak var dinersTF: UITextField!
	@IBOutlet weak var totalCostTF: UITextField!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	@IBAction func dismissKeyboard(_ sender: Any) {
		view.endEditing(true);
	}
	
	// Executes immediately before performing the segue
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

		if let dinerStr = dinersTF.text, let totalStr = totalCostTF.text, let diner = Double(dinerStr), let total = Double(totalStr)
		{
			let formattedCost = String(format: "%.2f", total / diner);
			let formattedTotal = String(format: "%.2f", total);
			
			let resultText = "The total cost of food is $\(formattedTotal)\n\nNumber of diners: \(Int(diner))\n\nEach diner pays: \(formattedCost)";
			
			// Accessing the target view of segue
			// We user downcatsing here to cast return of segue.destination to our preferred ViewContoller
			let destinationVC = segue.destination as! ResultsViewController;
			// Sending data to the target view
			destinationVC.finalText = resultText;
		}

	}
	
}

