//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Taha Babar on 8/16/20.
//  new file created using cocoa
//  segway (navigation and editing of how other scene will open up) created by using control ^ key, click calculate view contoller and drag it to result view controller in storyboard

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var background: UIImageView!
    var bmiValue = 0.0;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if( bmiValue < 18.5){
        bmiLabel.text = String(bmiValue);
        adviceLabel.text = "Eat more pies!";
        background.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1);   //color literal: to change the whole background color dynamics
            
        }
        else if( bmiValue >= 18.5 && bmiValue <= 24.9){
        bmiLabel.text = String(bmiValue);
        adviceLabel.text = "Fit as a fiddle!";
        background.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1);
        }
        else {
        bmiLabel.text = String(bmiValue);
        adviceLabel.text = "Eat less pies!";
        background.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1);
        }
        
    }
    

    @IBAction func keyPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil); //a method inherited from UIViewContoller that can remove the current scene with what is below it (as all scenes are in a stack)
        //we could also have created a new segue from tis screen to the first one, if we dont want to use this method
    }

}
