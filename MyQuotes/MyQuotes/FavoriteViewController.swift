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
	
	let defaults = UserDefaults.standard;
	
    override func viewDidLoad() {
        super.viewDidLoad()

    }
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated);
		
		let indexSaved = defaults.integer(forKey: "favorite");
		favoriteImg.image = UIImage(named: String(indexSaved));
		
		// Apply theme
		let themeValue = defaults.integer(forKey: "theme");
		
		if themeValue == 0
		{
			theme = UIColor.black;
		}
		else
		{
			theme = UIColor.white;
		}
		
		applyTheme(theme: theme);
	}
	
	func applyTheme(theme: UIColor)
	{
		view.backgroundColor = theme;
		
		var foreColor: UIColor;
		
		if theme == UIColor.black
		{
			foreColor = UIColor.white;
		}
		else
		{
			foreColor = UIColor.black;
		}
		
		for label in labels {
			label.textColor = foreColor;
		}
	}

}
