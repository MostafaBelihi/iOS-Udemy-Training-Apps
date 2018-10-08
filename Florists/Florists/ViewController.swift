//
//  ViewController.swift
//  Florists
//
//  Created by Mostafa AlBelliehy on 25/09/2018.
//  Copyright © 2018 Mostafa AlBelliehy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var topLabel: UILabel!
	@IBOutlet weak var infoLabel: UILabel!
	
	override func viewWillAppear(_ animated: Bool) {
		self.title = "Best Flowrist";
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		print("Views have been loaded into memory!");
		
		// Do any additional setup after loading the view, typically from a nib.
		
		/*** Adding a UILabel programmatically (commented) ***/
		/*
		/// Build the label
		let topLabel = UILabel(frame: CGRect(x: 10, y: 100, width: 200, height: 50));
		
		topLabel.text = "We are the best flosist";
		topLabel.textColor = UIColor.white;
		topLabel.numberOfLines = 2;
		topLabel.textAlignment = NSTextAlignment.center;
		
		/// Add to parent view
		self.view.addSubview(topLabel);
		*/
		/*** *** ***/
		
		topLabel.textColor = UIColor.yellow;
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		
		print("Your app is using too much memory!");
	}

	@IBAction func facebookClicked(_ sender: Any) {
		topLabel.text = "Facebook Info";
		infoLabel.text = "This is info of our Facebook account."
	}

	@IBAction func youtubeClicked(_ sender: Any) {
		print("YouTube button was clicked!");
	}
	
	@IBAction func twitterClicked(_ sender: Any) {
		print("Twitter button was clicked!");
	}
}

