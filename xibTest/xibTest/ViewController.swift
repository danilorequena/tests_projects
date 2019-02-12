//
//  ViewController.swift
//  xibTest
//
//  Created by Danilo Requena on 11/02/19.
//  Copyright © 2019 Danilo Requena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let names:Array<String> = ["Danilo", "José", "Joaquim", "Jessica"]
    let ages:Array<String> = ["30", "68", "67", "35"]
    let image:Array<String> = ["img1", "img2", "img3", "img4"]
    
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            let nibName = UINib(nibName: "TableViewCell", bundle: nil)
            tableView.register(nibName, forCellReuseIdentifier: "IdCell")
            tableView.dataSource = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
        


}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "IdCell") as! TableViewCell
        
        cell.labelNome.text = names[indexPath.row]
        cell.labelAge.text = ages[indexPath.row]
        cell.imageCell.image = UIImage(imageLiteralResourceName: image[indexPath.row])
        
        return cell
    }
}

