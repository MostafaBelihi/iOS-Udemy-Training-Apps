//
//  FavoriteViewController.swift
//  MyQuotes
//
//  Created by Mostafa AlBelliehy on 23/10/2018.
//  Copyright © 2018 Mostafa AlBelliehy. All rights reserved.
//

import UIKit

class FavoriteViewController: UIViewController {
	@IBOutlet weak var favoriteImg: UIImageView!
	
	@IBOutlet var labels: [UILabel]!
	
    override func viewDidLoad() {
        super.viewDidLoad()

    }
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated);
		
		let indexSaved = defaults.integer(forKey: "favorite");
		favoriteImg.image = UIImage(named: String(indexSaved));

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

		for label in labels {
			label.textColor = foreColor;
		}
		
		// Image borders
		if imageBorder
		{
			favoriteImg.layer.borderColor = foreColor.cgColor;
			favoriteImg.layer.borderWidth = 5.0;
		}
		else
		{
			favoriteImg.layer.borderWidth = 0;
		}
	}

}
