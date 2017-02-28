//
//  ColorsViewController.swift
//  GregsonRaevan_CE3
//
//  Created by Raevan Gregson on 12/5/16.
//  Copyright © 2016 Raevan Gregson. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    

    @IBOutlet weak var colorLabel: UILabel!

    @IBOutlet weak var color: UIButton!

    @IBOutlet weak var colorPicker: UIPickerView!
    
    var pickerView = true
    
    var pickerData = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.colorPicker.delegate = self
        self.colorPicker.dataSource = self

        // Do any additional setup after loading the view.
        
        pickerData = ["Red", "Purple","Green","Blue","Orange","Yellow", "Brown"]
        
        colorPicker.isHidden = true
    }
 
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count;
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
   
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        if(row == 0){
            self.view.backgroundColor = UIColor.red
            colorLabel.text = "This is the color Red!"
        }
        else if(row == 1){
            self.view.backgroundColor = UIColor.purple
            colorLabel.text = "This is the color Purple!"
        }
        else if(row == 2){
            self.view.backgroundColor =  UIColor.green
            colorLabel.text = "This is the color Green!"
        }
        else if (row == 3){
            self.view.backgroundColor = UIColor.blue
            colorLabel.text = "This is the color Blue!"
        }
        else if(row == 4){
            self.view.backgroundColor = UIColor.orange
            colorLabel.text = "This is the color Orange!"
        }
        else if(row == 5){
            self.view.backgroundColor = UIColor.yellow
            colorLabel.text = "This is the color Yellow!"
        }
        else if(row == 6){
            self.view.backgroundColor = UIColor.brown
            colorLabel.text = "This is the color Brown!"
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func color(_ sender: UIButton) {
        if pickerView == true{
        colorPicker.isHidden = false
        pickerView = false
        }
        else{
        colorPicker.isHidden = true
        pickerView = true
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
