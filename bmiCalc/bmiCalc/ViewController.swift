//
//  ViewController.swift
//  bmiCalc
//
//  Created by DONIA AUGUSTINE on 2022-09-13.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var weightentered: UITextField!
    
    @IBOutlet weak var heightentered: UITextField!
    
    @IBOutlet weak var bmiresult: UITextField!
    
    @IBOutlet weak var bmicategory: UILabel!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func BMICalc(_ sender: UIButton)
    {
        if let heightstr = heightentered.text
        {
            if heightstr == ""
            {
                return
            }
            else
            {
                if let weightstr = weightentered.text
                {
                    if weightstr == ""
                    {
                        return
                    }
                    else
                    {
                        if let heightNum = Double(heightstr)
                        {
                            if let weightNum =  Double(weightstr)
                            {
                                let bmi: Double = round( (weightNum)/(heightNum * heightNum))
                                bmiresult.text = String(bmi)
                                
                                switch bmi
                                {
                                case 1..<15:
                                    bmicategory.text = "Very Severely Overweight"
                                case 15...16:
                                    bmicategory.text = "Severely underweight"
                                case 16..<18.5:
                                    bmicategory.text = "Underweight"
                                case 18.5..<25:
                                    bmicategory.text = "Normal"
                                case 25..<30:
                                    bmicategory.text = "Overweight"
                                    
                                default:
                                    bmicategory.text = "Invalid Entry"
                                    
                                }
                            }
                        }
                    }
                    
                    
                }
            }
        }
        
    
    }
    
    

}


