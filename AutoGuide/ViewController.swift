//
//  ViewController.swift
//  AutoGuide
//
//  Created by Tareyev Gregory on 07.08.14.
//  Copyright (c) 2014 Sarov. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    //var recipes = ["Мясо по-таскански", "Мясо по-французки", "Макороны", "Пицца с грибами", "Суп из овощей"]
    
   var recipes = [
    (id: 1, name: "Ford", description: "Fusion", price: 20, img: "Ford_Fusion_rear_20080222.jpg"),
    (id: 2, name: "Renault", description: "Daster", price: 25, img: "renault_duster_1.jpg"),
    (id: 3, name: "Mazda", description: "CX-5", price: 35, img: "Mazda CX-5.png"),
    (id: 4, name: "Nissan", description: "X-trail", price: 28, img: "Nissan X-trail.jpg"),
    (id: 5, name: "Jeep", description: "Grand Cherokee", price: 45, img: "Jeep grand Cherokee.png")
                ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        let identifier = "cell"
        var cell : UITableViewCell = tableView.dequeueReusableCellWithIdentifier(identifier) as UITableViewCell
        if (cell==nil) {
            cell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: identifier)
        }
        cell.imageView.image = UIImage(named: recipes[indexPath!.row].img)
        cell.textLabel.text = recipes[indexPath!.row].name
        
        return cell
    }
    override func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return recipes.count
    }
    override func prepareForSegue(segue: UIStoryboardSegue!, sender:AnyObject!) {
        if segue.identifier == "showDetail" {
            var indexPath = tableView.indexPathForSelectedRow()
            let destViewController:DetailViewController! = segue.destinationViewController as DetailViewController
            
            destViewController.recipes = recipes[indexPath.row]
            
            destViewController.title = recipes[indexPath!.row].name
            
        }
    }
}


