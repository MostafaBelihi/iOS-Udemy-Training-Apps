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
	@IBOutlet weak var resultLbl: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	@IBAction func calculate(_ sender: Any) {
		
		let dinerValue = dinersTF.text;
		let totalValue = totalCostTF.text;
		
		// Used optional binding because TF.text is optional
		if let dinerStr = dinerValue, let totalStr = totalValue
		{
			
			let dinerDouble = Double(dinerStr);
			let totalDouble = Double(totalStr);
			
			// Used optional binding because Double() returns an optional
			if let diner = dinerDouble, let total = totalDouble
			{
				print(diner + total);
			}
		}
		
	}
}

