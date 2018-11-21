//
//  CarTableViewController.swift
//  FaveCar
//
//  Created by Mostafa AlBelliehy on 13/11/2018.
//  Copyright © 2018 Mostafa AlBelliehy. All rights reserved.
//

import UIKit

var names = [String]();
var images = [UIImage]();

class CarTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated);
		
		tableView.reloadData();
	}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return names.count;
    }

	
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "carCell", for: indexPath)

		let imgCar = cell.viewWithTag(10) as! UIImageView;
		imgCar.image = images[indexPath.row];
		imgCar.layer.cornerRadius = 10;
		imgCar.clipsToBounds = true;

		let lblBack = cell.viewWithTag(11) as! UILabel;
		lblBack.layer.cornerRadius = 10;
		lblBack.layer.borderColor = UIColor.darkGray.cgColor;
		lblBack.layer.borderWidth = 3;
		lblBack.clipsToBounds = true;
		
		let lblNumber = cell.viewWithTag(12) as! UILabel;
		lblNumber.layer.cornerRadius = 17.5;
		lblNumber.layer.borderColor = UIColor.black.cgColor;
		lblNumber.layer.borderWidth = 3;
		lblNumber.clipsToBounds = true;
		lblNumber.text = "\(indexPath.row + 1)";
		
		let lblTitle = cell.viewWithTag(13) as! UILabel;
		lblTitle.layer.cornerRadius = 10;
		lblTitle.layer.borderColor = UIColor.darkGray.cgColor;
		lblTitle.layer.borderWidth = 3;
		lblTitle.clipsToBounds = true;
		lblTitle.text = names[indexPath.row];
		
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
