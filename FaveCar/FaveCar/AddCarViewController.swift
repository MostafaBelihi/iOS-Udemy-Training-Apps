//
//  AddCarViewController.swift
//  FaveCar
//
//  Created by Mostafa AlBelliehy on 13/11/2018.
//  Copyright © 2018 Mostafa AlBelliehy. All rights reserved.
//

import UIKit

class AddCarViewController: UIViewController, UITextFieldDelegate {

	@IBOutlet weak var txtCarName: UITextField!
	@IBOutlet weak var imgCarImage: UIImageView!
	@IBOutlet weak var btnSelectCar: UIButton!
	@IBOutlet weak var lblCharacterCount: UILabel!
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
		// This class implements delegates for the UITextField
		txtCarName.delegate = self;

        // Do any additional setup after loading the view.
    }
	
	func textFieldShouldReturn(_ textField: UITextField) -> Bool {
		// Dismisses keyboard from rhe text field
		txtCarName.resignFirstResponder();
		
		return true;
	}

	@IBAction func selectCar(_ sender: Any) {
	}
	
	@IBAction func save(_ sender: Any) {
	}
	
}
