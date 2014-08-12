//
//  DetailViewController.swift
//  AutoGuide
//
//  Created by Tareyev Gregory on 07.08.14.
//  Copyright (c) 2014 Sarov. All rights reserved.
//
import UIKit

class DetailViewController: UIViewController {
    var recipes: (id:Int, name:String, description:String, price:Int, img: String) = (id: 0, name:"null", description:"null", price : 0, img:"null")
    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Custom initialization
    }
    @IBOutlet var nameLabel: UILabel!
    
    init (coder aDecoder:NSCoder!){
        super.init(coder:aDecoder)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = recipes.name
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
