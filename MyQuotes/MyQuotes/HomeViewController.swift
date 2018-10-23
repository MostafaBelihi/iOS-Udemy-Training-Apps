//
//  HomeViewController.swift
//  MyQuotes
//
//  Created by Mostafa AlBelliehy on 19/10/2018.
//  Copyright © 2018 Mostafa AlBelliehy. All rights reserved.
//

import UIKit

var theme: UIColor = UIColor.black;		// global theme

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
		
		// Apply theme
		self.view.backgroundColor = theme;
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
		let defaults = UserDefaults.standard
		defaults.set(arrayIndex, forKey: "favorite");
	}
	
}
