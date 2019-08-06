//
//  BuyTableViewController.swift
//  Reawakened
//
//  Created by mikewang on 2019/8/5.
//  Copyright © 2019 chiron wang. All rights reserved.
//

import UIKit

class BuyTableViewController: UITableViewController {

    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - IBAction
    
    @IBAction func buyButtonPressed(_ sender: UIButton) {
        guard let id = sender.restorationIdentifier else { return }
        let detailsID = getBuyDetailsViewControllerID(id)
        
        guard let buyDetails = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: detailsID) as? BuyDetailsViewController else { return }
        buyDetails.storeName = id
        
        navigationController?.pushViewController(buyDetails, animated: true)
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 4
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    // MARK: - Other Method
    
    private func getBuyDetailsViewControllerID(_ id: String) -> String {
        var result = ""
        switch id {
        case "book1Amazon", "book1Kobo", "book1ReadMoo":
            result = "buyDetails1"
        case "book2Amazon", "book2Kobo", "book2ReadMoo":
            result = "buyDetails2"
        case "book3Amazon", "book3Kobo", "book3ReadMoo":
            result = "buyDetails3"
        case "book4Amazon", "book4Kobo", "book4ReadMoo":
            result = "buyDetails4"
        default:
            result = "buyDetails1"
        }
        
        return result
    }

}
