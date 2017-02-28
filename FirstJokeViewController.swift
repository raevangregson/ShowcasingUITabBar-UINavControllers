//
//  FirstJokeViewController.swift
//  GregsonRaevan_CE3
//
//  Created by Raevan Gregson on 12/5/16.
//  Copyright © 2016 Raevan Gregson. All rights reserved.
//

import UIKit

class FirstJokeViewController: UIViewController {

    //first view array of jokes
    var jokeArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        jokeArray = ["Canoe","Iva","Dwayne"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        let nextVC = segue.destination as! SecondJokeViewController
        let randomIndex = Int(arc4random_uniform(UInt32(jokeArray.count)))
        
        nextVC.answer = jokeArray[randomIndex]
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
