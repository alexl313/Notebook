//
//  ViewController.swift
//  ANotebook
//
//  Created by user167306 on 3/29/21.
//  Copyright © 2021 user167306. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    var an = ["Math","English","Science",]
    var place = ["1","2","3","4","5","6",]
    @IBOutlet weak var assighnment: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        assighnment.delegate = self
        assighnment.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return an.count
        
        
    }
    
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "AN")
           cell?.textLabel?.text = an[indexPath.row]
        cell?.detailTextLabel?.text = place[indexPath.row]
           cell?.backgroundColor = .green
           cell?.textLabel?.textColor = .systemPink
           cell?.textLabel?.font = .monospacedDigitSystemFont(ofSize: 20, weight: .bold)
           cell?.imageView?.image = UIImage(named: "")
        return cell!


}

}
