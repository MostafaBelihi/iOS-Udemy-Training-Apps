//
//  CostlyViewController.swift
//  BillSplitter
//
//  Created by Mostafa AlBelliehy on 15/10/2018.
//  Copyright © 2018 Mostafa AlBelliehy. All rights reserved.
//

import UIKit

class CostlyViewController: UIViewController {
	@IBOutlet weak var titleLbl: UILabel!
	@IBOutlet weak var resultLbl: UILabel!
	var finalTextCostly = "";
	var titleCostly = "";
	
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLbl.text = finalTextCostly;
		titleLbl.text = titleCostly;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
