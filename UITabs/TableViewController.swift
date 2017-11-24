//
//  TableViewController.swift
//  UITabs
//
//  This controller shows the instructions for gameplay in a TableViewController.
//
//  Created by Christine Berger on 11/11/17.
//  Copyright © 2017 Christine Berger. All rights reserved.
//----------------------------------------------------------------------------------------------------//

import UIKit        //Useful UI things to use.

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //Reference the UITableView.
    @IBOutlet weak var tableView: UITableView!
    
    //Items to initialize the table cells.
    var cell_items = ["Gameboard", "Legend", "Objective"]
    var cell_images = [#imageLiteral(resourceName: "Gameboard"), #imageLiteral(resourceName: "Legend"), #imageLiteral(resourceName: "Objective")]
    
    /*----------------------------------------------------------------------------------------/
     * viewDidLoad()
     * When the view loads, make this the tableView's delegate and datasource.
     *----------------------------------------------------------------------------------------*/
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    /*----------------------------------------------------------------------------------------/
     * tableView(numberOfRowsInSection)
     * Returns the number of rows in the table section.
     *----------------------------------------------------------------------------------------*/
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cell_items.count
    }
    
    /*----------------------------------------------------------------------------------------/
     * tableView(cellForRowAt)
     * Creates the table cell layout and returns it.
     *----------------------------------------------------------------------------------------*/
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //Create a new UITableCell.
        let cell = UITableViewCell()
        
        //Set the Title on the cell to the cell title with the same index.
        cell.textLabel?.text = cell_items[indexPath.row]
        //Set the image on the cell to the cell image with the same index.
        cell.imageView?.image = cell_images[indexPath.row]

        return cell
    }
    
    /*----------------------------------------------------------------------------------------/
     * tableView(didSelectRowAt)
     * Opens up a segue based on the cell that was selected.
     *----------------------------------------------------------------------------------------*/
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: cell_items[indexPath.row], sender: nil)
    }
}
