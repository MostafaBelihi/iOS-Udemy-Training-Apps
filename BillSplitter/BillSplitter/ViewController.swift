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
		// Combined all optional binding from last commit into one multiple unwrapping if...let
		if let dinerStr = dinersTF.text, let totalStr = totalCostTF.text, let diner = Double(dinerStr), let total = Double(totalStr)
		{
			resultLbl.text = "\(total / diner)";
		}
		
	}
	
	@IBAction func dismissKeyboard(_ sender: Any) {
		view.endEditing(true);
	}
	
}

