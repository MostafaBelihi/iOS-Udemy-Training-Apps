//
//  FinishViewController.swift
//  BillSplitter
//
//  Created by Mostafa AlBelliehy on 16/10/2018.
//  Copyright © 2018 Mostafa AlBelliehy. All rights reserved.
//

import UIKit

class FinishViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
	@IBAction func finishClicked(_ sender: Any) {
		// Popping back to the root of the navigation controller
		if let navController = navigationController {
			navController.popToRootViewController(animated: true);
		}
	}
	
}
