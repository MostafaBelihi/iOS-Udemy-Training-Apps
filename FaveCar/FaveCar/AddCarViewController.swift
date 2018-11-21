//
//  AddCarViewController.swift
//  FaveCar
//
//  Created by Mostafa AlBelliehy on 13/11/2018.
//  Copyright © 2018 Mostafa AlBelliehy. All rights reserved.
//

import UIKit

class AddCarViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

	@IBOutlet weak var txtCarName: UITextField!
	@IBOutlet weak var imgCarImage: UIImageView!
	@IBOutlet weak var btnSelectCar: UIButton!
	@IBOutlet weak var lblCharacterCount: UILabel!
	
	var imagePicked = false;	// validation
	
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
	
	func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
		if let length = textField.text?.characters.count
		{
			lblCharacterCount.text = "\(length + 1) characters";
		}
		
		return true;
	}
	
	// Acting after the image is picked and in edited
	func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
		// Unwrapping edited image
		// You can use UIImagePickerControllerOriginalImage here instead of UIImagePickerControllerEditedImage
		// 	if you want the image before being edited. This can be useful if you do not allow esiting
		if let selectedImage = info[UIImagePickerControllerEditedImage] as? UIImage
		{
			// Loading image in ImageView
			imagePicked = true;
			imgCarImage.image = selectedImage;
			images.append(selectedImage);
		}
		
		// Closing image picker
		dismiss(animated: true);
	}

	// Preparing and presenting image picker
	@IBAction func selectCar(_ sender: Any) {
		let photoPicker = UIImagePickerController();
		photoPicker.delegate = self;
		photoPicker.allowsEditing = true;	// to crop the image
		
		present(photoPicker, animated: true);
	}
	
	@IBAction func save(_ sender: Any) {
		// Validation
		if !imagePicked
		{
			print("No image");
			return;
		}

		if (txtCarName.text?.isEmpty)!
		{
			print("No name");
			return;
		}
		
		// Save data
		if let value = txtCarName.text
		{
			names.append(value);
		}
	}
	
}
