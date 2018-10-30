//
//  CustomButton.swift
//  WorkoutGuide
//
//  Created by Mostafa AlBelliehy on 30/10/2018.
//  Copyright © 2018 Mostafa AlBelliehy. All rights reserved.
//

import UIKit

class CustomButton: UIButton {

	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder);
		
		// Button custom style
		self.backgroundColor = UIColor(red: 0.99, green: 0.29, blue: 0.34, alpha: 1.00);
		self.setTitleColor(UIColor.white, for: .normal);
		self.titleLabel?.font = UIFont(name: "HelveticaNeue-CondensedBlack", size: 20);
		self.layer.cornerRadius = 5;
		self.clipsToBounds = true;
	}

}
