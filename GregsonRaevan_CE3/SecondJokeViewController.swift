//
//  SecondJokeViewController.swift
//  GregsonRaevan_CE3
//
//  Created by Raevan Gregson on 12/5/16.
//  Copyright © 2016 Raevan Gregson. All rights reserved.
//

import UIKit

class SecondJokeViewController: UIViewController {
    @IBOutlet weak var jokeAnswer: UILabel!
    @IBOutlet weak var who: UIButton!
    
    var answer = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        jokeAnswer.text = answer
        who.setTitle("\(answer) who?", for: .normal)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //setup the next vc
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let nextVC = segue.destination as! ThirdJokeViewController
        
        if answer == "Iva"
        {
            nextVC.answer = "I’ve a sore hand from knocking!"
        }
        else if answer == "Canoe"
        {
            nextVC.answer = "Canoe help me with my homework?"
        }
        else {
        
            nextVC.answer = "Dwayne the bathtub, It’s overflowing!"
        }
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
