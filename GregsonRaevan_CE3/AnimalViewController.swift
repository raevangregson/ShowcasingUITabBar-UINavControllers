//
//  AnimalViewController.swift
//  GregsonRaevan_CE3
//
//  Created by Raevan Gregson on 12/5/16.
//  Copyright © 2016 Raevan Gregson. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {

    @IBOutlet weak var animalName: UILabel!
    
    @IBOutlet weak var animalPic: UIImageView!
    
    @IBOutlet weak var animalSlider: UISlider!
    
    var animalArray = [Animal]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let chimp = Animal(name: "Chimp",image: #imageLiteral(resourceName: "chimp"))
        let bird = Animal(name: "Bird", image: #imageLiteral(resourceName: "Bird-1"))
        let croc = Animal(name: "Crocodile",image: #imageLiteral(resourceName: "crocodile_PNG"))
        let zebra = Animal(name:"Zebra", image: #imageLiteral(resourceName: "Zebra"))
        let squirrel = Animal(name:"Squirrel", image: #imageLiteral(resourceName: "squirrel_PNG"))
        let owl = Animal(name:"Owl",image:#imageLiteral(resourceName: "owl"))
        
        
        animalArray = [chimp,bird,croc,zebra,squirrel,owl]
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    @IBAction func changedValue(_ sender: UISlider) {
        
        sender.setValue(Float(lroundf(animalSlider.value)), animated: true)
        
       let currentValue = animalArray[Int(sender.value)]
        
        animalName.text = currentValue.name
        animalPic.image = currentValue.image
        
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
