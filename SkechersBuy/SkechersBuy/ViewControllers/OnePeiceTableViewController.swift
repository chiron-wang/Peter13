//
//  OnePeiceTableViewController.swift
//  SkechersBuy
//
//  Created by mikewang on 2019/9/19.
//  Copyright © 2019 mikewang. All rights reserved.
//

import UIKit

class OnePeiceTableViewController: UITableViewController {

    @IBOutlet var womanLabels: [UILabel]!
    @IBOutlet var womanSteppers: [UIStepper]!
    @IBOutlet weak var finalPriceLabel: UILabel!
    
    let shoppingCart = Items.sharedInstance.shoppingCart
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateFinalPriceLabel()
    }

    // MARK: - IBAction
    
    
    
    @IBAction func womanStepperValueChanged(_ sender: UIStepper) {
        guard let stepperID = sender.restorationIdentifier else { return }
        let index = shoppingCart.getShoesIndex(stepperID)
        let count = Int(sender.value)
        shoppingCart.shoesDictionary[stepperID]?.count = count
        
        womanLabels[index].text = count.description
        
        updateFinalPriceLabel()
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 6
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
    
    private func updateFinalPriceLabel() {
        let total = shoppingCart.calculate()
        finalPriceLabel.text = shoppingCart.getMoney(total)
    }
}
