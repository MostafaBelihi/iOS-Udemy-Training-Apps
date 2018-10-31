//
//  DetailsViewController.swift
//  WorkoutGuide
//
//  Created by Mostafa AlBelliehy on 30/10/2018.
//  Copyright © 2018 Mostafa AlBelliehy. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

		let closeBtn = view.viewWithTag(5) as! UIButton;

		// Load image
		let imgView = view.viewWithTag(6) as! UIImageView;
		let image = UIImage(named: details[0]);		// first item is the image name in PList
		imgView.image = image;
		
		// Load text
		let descrText = view.viewWithTag(7) as! UITextView;
		let text = details[1];
		descrText.text = text;
		
		// Styling
		self.view.backgroundColor = appColor;
		imgView.layer.borderWidth = 4;
		imgView.layer.borderColor = appColor.cgColor;
		descrText.textColor = UIColor.white;
		descrText.font = UIFont(name: "AvenirNext-Regular ", size: 21);
		closeBtn.setTitleColor(UIColor.white, for: .normal);
		
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
