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
	
	var resultText = "";
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	@IBAction func dismissKeyboard(_ sender: Any) {
		view.endEditing(true);
	}
	
	// Should segue execute? Good for validations
	override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
		// Validate inputs, make calculations, allow sqgue
		if let dinerStr = dinersTF.text, let totalStr = totalCostTF.text, let diner = Double(dinerStr), let total = Double(totalStr)
		{
			let formattedCost = String(format: "%.2f", total / diner);
			let formattedTotal = String(format: "%.2f", total);
			
			resultText = "The total cost of food is $\(formattedTotal)\n\nNumber of diners: \(Int(diner))\n\nEach diner pays: $\(formattedCost)";
			
			return true;	// allow segue
		}
		
		return false;		// failed segue
	}
	
	// Executes immediately before performing the segue
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

		/// Pass data to next view
		// Accessing the target view of segue
		// We user downcatsing here to cast return of segue.destination to our preferred ViewContoller
		let destinationVC = segue.destination as! ResultsViewController;
		// Sending data to the target view
		destinationVC.finalText = resultText;

	}
	
	// Unwind segue
	@IBAction func dismissVC(segue: UIStoryboardSegue)
	{
		
	}
	
}

