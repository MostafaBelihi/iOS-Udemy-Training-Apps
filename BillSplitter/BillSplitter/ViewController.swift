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

	@IBAction func calculate(_ sender: Any) {
		// Combined all optional binding from last commit into one multiple unwrapping if...let
		if let dinerStr = dinersTF.text, let totalStr = totalCostTF.text, let diner = Double(dinerStr), let total = Double(totalStr)
		{
			let formattedCost = String(format: "%.2f", total / diner);
			let formattedTotal = String(format: "%.2f", total);
			
			//resultLbl.text = "The total cost of food is $\(formattedTotal)\n\nNumber of diners: \(Int(diner))\n\nEach diner pays: \(formattedCost)";
		}
		
	}
	
	@IBAction func dismissKeyboard(_ sender: Any) {
		view.endEditing(true);
	}
	
}

