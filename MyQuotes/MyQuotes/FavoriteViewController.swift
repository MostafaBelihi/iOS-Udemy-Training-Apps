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
	
    override func viewDidLoad() {
        super.viewDidLoad()

    }
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated);
		
		let indexSaved = UserDefaults.standard.integer(forKey: "favorite");
		favoriteImg.image = UIImage(named: String(indexSaved));
	}

}
