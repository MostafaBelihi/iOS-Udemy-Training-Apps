//
//  HomeViewController.swift
//  MyQuotes
//
//  Created by Mostafa AlBelliehy on 19/10/2018.
//  Copyright © 2018 Mostafa AlBelliehy. All rights reserved.
//

import UIKit

let defaults = UserDefaults.standard;
var theme: UIColor = UIColor.black;		// global theme
var imageBorder = false;

class HomeViewController: UIViewController {

	@IBOutlet weak var quoteImg: UIImageView!
	
	
	var quotes = [String]();
	var arrayIndex = 0;
	
    override func viewDidLoad() {
        super.viewDidLoad()

		for i in 0...6 {
			quotes.append(String(i));
		}
    }
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated);
		
		// Read defaults
		let themeValue = defaults.integer(forKey: "theme");
		
		if themeValue == 0
		{
			theme = UIColor.black;
		}
		else
		{
			theme = UIColor.white;
		}

		imageBorder = defaults.bool(forKey: "imageBorder");

		applyTheme();
	}

	@IBAction func backClicked(_ sender: Any) {
		arrayIndex -= 1;
		if arrayIndex < 0 {
			arrayIndex = 0;
		}
		
		quoteImg.image = UIImage(named: quotes[arrayIndex]);
	}

	@IBAction func nextClicked(_ sender: Any) {
		arrayIndex += 1;
		if arrayIndex > quotes.count - 1 {
			arrayIndex = quotes.count - 1;
		}
		
		quoteImg.image = UIImage(named: quotes[arrayIndex]);
	}

	@IBAction func favoriteClicked(_ sender: Any) {
		defaults.set(arrayIndex, forKey: "favorite");
	}
	
	func applyTheme()
	{
		// Reverse color
		var foreColor: UIColor;
		
		if theme == UIColor.black
		{
			foreColor = UIColor.white;
		}
		else
		{
			foreColor = UIColor.black;
		}
		
		// Apply Theme
		view.backgroundColor = theme;
		
		// Image borders
		if imageBorder
		{
			quoteImg.layer.borderColor = foreColor.cgColor;
			quoteImg.layer.borderWidth = 5.0;
		}
		else
		{
			quoteImg.layer.borderWidth = 0;
		}
	}

	
}
