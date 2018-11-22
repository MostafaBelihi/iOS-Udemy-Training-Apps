//
//  CarTableViewCell.swift
//  FaveCar
//
//  Created by Mostafa AlBelliehy on 21/11/2018.
//  Copyright © 2018 Mostafa AlBelliehy. All rights reserved.
//

import UIKit

class CarTableViewCell: UITableViewCell {
	
	@IBOutlet weak var imgCarImage: UIImageView!
	@IBOutlet weak var lblBackground: UILabel!
	@IBOutlet weak var lblNumber: UILabel!
	@IBOutlet weak var lblTitle: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()

		// UI customizations
		imgCarImage.layer.cornerRadius = 10;
		imgCarImage.clipsToBounds = true;
		
		lblBackground.layer.cornerRadius = 10;
		lblBackground.layer.borderColor = UIColor.darkGray.cgColor;
		lblBackground.layer.borderWidth = 3;
		lblBackground.clipsToBounds = true;
		
		lblNumber.layer.cornerRadius = 17.5;
		lblNumber.layer.borderColor = UIColor.black.cgColor;
		lblNumber.layer.borderWidth = 3;
		lblNumber.clipsToBounds = true;
		
		lblTitle.layer.cornerRadius = 10;
		lblTitle.layer.borderColor = UIColor.darkGray.cgColor;
		lblTitle.layer.borderWidth = 3;
		lblTitle.clipsToBounds = true;
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
