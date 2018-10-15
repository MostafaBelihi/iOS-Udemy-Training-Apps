//
//  ResultsViewController.swift
//  BillSplitter
//
//  Created by Mostafa AlBelliehy on 14/10/2018.
//  Copyright © 2018 Mostafa AlBelliehy. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

	@IBOutlet weak var resultLbl: UILabel!
	var finalText = "";
	
	override func viewDidLoad() {
        super.viewDidLoad()

		resultLbl.text = finalText;
    }

	@IBAction func close(_ sender: Any) {
	}
	
}
