//
//  ViewController.swift
//  BMI Calculator
//

//

import UIKit

class CalculateViewController: UIViewController {  //ViewController is our class name, it inherits from UIViewController

    @IBOutlet weak var slider: UISlider!    //a way of creating an object of a class
    @IBOutlet weak var slider2: UISlider!
    @IBOutlet weak var slider1Label: UILabel!
    @IBOutlet weak var slider2Label: UILabel!
    var BMIValue = 0.0;
    
    override func viewDidLoad() {   //an overide function
        super.viewDidLoad();     //super.something() example
        
        slider1Label.text = "\(Float(slider.value))m";
        slider2Label.text = "\(Int(slider2.value))Kg";
    }
    
    @IBAction func sliderPressed(_ sender: UISlider) {   //class can be inside a paramter as well
        let myDouble = sender.value;
        slider1Label.text = "\(String(format: "%.2f", myDouble))m";
    }
    
    
    @IBAction func sliderPressed2(_ sender: UISlider) {
        //let myDouble2 = sender.value;
        //slider2Label.text = "\(String(format: "%.0f", myDouble2))Kg";
        slider2Label.text = "\(Int(slider2.value))Kg";
    }
    
    @IBAction func buttonTriggered(_ sender: UIButton) {
        let height = slider.value;
        let weight = slider2.value;
        var BMI = (weight)/(height * height);
        BMIValue = Double(String(format: "%.1f", BMI))!;
        performSegue(withIdentifier: "goToResult", sender: self) //a method inherited to control any added segues
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) //method it inherits from UIViewContoller class that help us control things in destination of the segue
    {
        if (segue.identifier == "goToResult") //added if so if multiple segues from a scene, we can make sure that we are performing actions to the destination we need only
            {
                let destinationVC = segue.destination as! ResultViewController;
                destinationVC.bmiValue = BMIValue;  //we can now do this without even making objects of another class
        }
        
    }
}

/*
 we will create a new file to code for the second scene
 */
/*
 Classes & Inheritance Lecture is in App Dev main folder!!
 */
