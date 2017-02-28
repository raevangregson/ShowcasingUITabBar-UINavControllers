//
//  ThirdJokeViewController.swift
//  GregsonRaevan_CE3
//
//  Created by Raevan Gregson on 12/5/16.
//  Copyright © 2016 Raevan Gregson. All rights reserved.
//

import UIKit

class ThirdJokeViewController: UIViewController {

    @IBOutlet weak var endOfJoke: UILabel!
    
    var answer = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        endOfJoke.text = answer
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //jump back to the first view
    @IBAction func backToRoot(){
        
       _ = navigationController?.popToRootViewController(animated: true)
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
