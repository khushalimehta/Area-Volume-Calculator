//
//  ViewController.swift
//  assignment2
//
//  Created by Khushali Mehta on 2/19/16.
//  Copyright © 2016 Khushali Mehta. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate{
    
   
    @IBOutlet weak var text1: UITextField!
    
    @IBOutlet weak var text2: UITextField!
    
    @IBOutlet weak var text3: UITextField!
    
    @IBOutlet weak var text4: UITextField!
    
    @IBOutlet weak var side1: UILabel!
    
    @IBOutlet weak var side2: UILabel!
    
    @IBOutlet weak var side3: UILabel!
    
    @IBOutlet weak var side4: UILabel!
    
    @IBOutlet weak var answer1: UILabel!
    
    @IBOutlet weak var answer2: UILabel!
    
    @IBOutlet weak var radiustext: UILabel!
    
    @IBOutlet weak var heighttext: UILabel!
    
    @IBOutlet weak var valuelabel: UILabel!
    
    @IBOutlet weak var stepper: UIStepper!
    
    @IBAction func steppervaluechanged(sender: UIStepper) {
        valuelabel.text = Double(sender.value).description
        cal()
    }
    
    
    @IBOutlet weak var errordisp: UILabel!
    
    
    @IBOutlet weak var hvaluelabel: UILabel!
    
    
    @IBOutlet weak var slider: UISlider!
    
    
    @IBAction func slidervaluechanged(sender: UISlider) {
                hvaluelabel.text = String(format: "%.2f", Double(sender.value))
        cal()
    }
    
    //@IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var imgshape: UIImageView!
    var array = [String]()
    var selectedsegment = "0"
    var ans1 = 0.0
    var ans2 = 0.0
    var part1 = 0.0
    var part2 = 0.0
    @IBAction func Segmentedcontrolaction(sender:UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0
        {
            array = ["square","rectangle","trapezoid","triangle","circle"]
            Picker.reloadAllComponents()
            
        }
        else if sender.selectedSegmentIndex == 1
        {
            array = ["cube","pyramid", "prism","cone","cylinder","sphere"]
            Picker.reloadAllComponents()
        }
        
    }
    
    
    @IBOutlet weak var Picker: UIPickerView!
    
    
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1;
    }
    
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return array.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        selectedsegment = array[Picker.selectedRowInComponent(0)]
       
        if selectedsegment == "square" {
            radiustext.hidden = true
            valuelabel.hidden = true
            stepper.hidden = true
            heighttext.hidden = true
            hvaluelabel.hidden = true
            slider.hidden = true
            side2.hidden = true
            text2.hidden = true
            side3.hidden = true
            text3.hidden = true
            side4.hidden = true
            text4.hidden = true
            side1.hidden = false
            text1.hidden = false
            imgshape.hidden = false
        }
        else if selectedsegment == "rectangle"
        {
            radiustext.hidden = true
            valuelabel.hidden = true
            stepper.hidden = true
            heighttext.hidden = true
            hvaluelabel.hidden = true
            slider.hidden = true
            side3.hidden = true
            text3.hidden = true
            side4.hidden = true
            text4.hidden = true
            side1.hidden = false
            text1.hidden = false
            side2.hidden = false
            text2.hidden = false
            imgshape.hidden = false
        }
        else if selectedsegment == "trapezoid"
        {
            radiustext.hidden = true
            valuelabel.hidden = true
            stepper.hidden = true
            heighttext.hidden = false
            hvaluelabel.hidden = false
            slider.hidden = false
            side1.hidden = false
            side2.hidden = false
            side3.hidden = false
            side4.hidden = false
            text1.hidden = false
            text2.hidden = false
            text3.hidden = false
            text4.hidden = false
            imgshape.hidden = false
        }
        else if selectedsegment == "triangle"
        {
            radiustext.hidden = true
            valuelabel.hidden = true
            stepper.hidden = true
            heighttext.hidden = false
            hvaluelabel.hidden = false
            slider.hidden = false
            side4.hidden = true
            text4.hidden = true
            side1.hidden = false
            side2.hidden = false
            side3.hidden = false
            text1.hidden = false
            text2.hidden = false
            text3.hidden = false
            imgshape.hidden = false
        }
        else if selectedsegment == "circle"
        {
            radiustext.hidden = false
            valuelabel.hidden = false
            stepper.hidden = false
            heighttext.hidden = true
            hvaluelabel.hidden = true
            slider.hidden = true
            side3.hidden = true
            text3.hidden = true
            side4.hidden = true
            text4.hidden = true
            side1.hidden = true
            text1.hidden = true
            side2.hidden = true
            text2.hidden = true
            imgshape.hidden = false
        }
        else if selectedsegment == "cube"
        {
            radiustext.hidden = true
            valuelabel.hidden = true
            stepper.hidden = true
            heighttext.hidden = true
            hvaluelabel.hidden = true
            slider.hidden = true
            side3.hidden = true
            text3.hidden = true
            side4.hidden = true
            text4.hidden = true
            side1.hidden = false
            text1.hidden = false
            side2.hidden = true
            text2.hidden = true
            imgshape.hidden = false
        }
        else if selectedsegment == "pyramid"
        {
            radiustext.hidden = true
            valuelabel.hidden = true
            stepper.hidden = true
            heighttext.hidden = false
            hvaluelabel.hidden = false
            slider.hidden = false
            side3.hidden = true
            text3.hidden = true
            side4.hidden = true
            text4.hidden = true
            side1.hidden = false
            text1.hidden = false
            side2.hidden = false
            text2.hidden = false
            imgshape.hidden = false
        }
        else if selectedsegment == "prism"
        {
            radiustext.hidden = true
            valuelabel.hidden = true
            stepper.hidden = true
            heighttext.hidden = false
            hvaluelabel.hidden = false
            slider.hidden = false
            side3.hidden = true
            text3.hidden = true
            side4.hidden = true
            text4.hidden = true
            side1.hidden = false
            text1.hidden = false
            side2.hidden = false
            text2.hidden = false
            imgshape.hidden = false
        }
        else if selectedsegment == "cone"
        {
            radiustext.hidden = false
            valuelabel.hidden = false
            stepper.hidden = false
            heighttext.hidden = false
            hvaluelabel.hidden = false
            slider.hidden = false
            side1.hidden = true
            side2.hidden = true
            side3.hidden = true
            side4.hidden = true
            text1.hidden = true
            text2.hidden = true
            text3.hidden = true
            text4.hidden = true
            imgshape.hidden = false
        }
        else if selectedsegment == "cylinder"
        {
            radiustext.hidden = false
            valuelabel.hidden = false
            stepper.hidden = false
            heighttext.hidden = false
            hvaluelabel.hidden = false
            slider.hidden = false
            side1.hidden = true
            side2.hidden = true
            side3.hidden = true
            side4.hidden = true
            text1.hidden = true
            text2.hidden = true
            text3.hidden = true
            text4.hidden = true
            imgshape.hidden = false
        }
        else if selectedsegment == "sphere"
        {
            radiustext.hidden = false
            valuelabel.hidden = false
            stepper.hidden = false
            heighttext.hidden = true
            hvaluelabel.hidden = true
            slider.hidden = true
            side1.hidden = true
            side2.hidden = true
            side3.hidden = true
            side4.hidden = true
            text1.hidden = true
            text2.hidden = true
            text3.hidden = true
            text4.hidden = true
            imgshape.hidden = false
        }
        return array[row]
        
    }
    
    
    @IBAction func calculate(sender: UIButton) {
        
        
        if selectedsegment == "square"
        {
            
            if text1.text == "" ||  validate(text1.text!) == false
            {
                errordisp.text = "Invalid input"
                answer1.hidden = true
                answer2.hidden = true
            }
            else
            {
                ans1 = (Double(text1.text!)! * Double(text1.text!)!)
                ans2 = 4 * (Double(text1.text!)!)
                imgshape.image = UIImage(named: "square.jpg")
                errordisp.hidden = true
                answer1.hidden = false
                answer2.hidden = false
            }
            
        }
        else if selectedsegment == "rectangle"
        {
            
            if text1.text == "" || text2.text == "" ||  validate(text1.text!) == false || validate(text2.text!) == false
            {
                errordisp.text = "Invalid input"
                answer1.hidden = true
                answer2.hidden = true
                
            }
            else
            {
                ans1 = (Double(text1.text!)! * Double(text2.text!)!)
                ans2 = 2 * (Double(text1.text!)! + Double(text2.text!)!)
                imgshape.image = UIImage(named: "rectangle.jpg")
                errordisp.hidden = true
                answer1.hidden = false
                answer2.hidden = false
            }
            
        }
        else if selectedsegment == "trapezoid"
        {
            
            if text1.text == "" || text2.text == "" || text3.text == "" || text4.text == "" || validate(text1.text!) == false || validate(text2.text!) == false || validate(text3.text!) == false
            {
                errordisp.text = "Invalid input"
                answer1.hidden = true
                answer2.hidden = true
            }
            else
            {
                ans1 = ((Double(text1.text!)! + Double(text2.text!)!) / 2 ) * (Double(hvaluelabel.text!)!)
                ans2 = (Double(text1.text!)!) + (Double(text2.text!)!) + (Double(text3.text!)!) + (Double(text4.text!)!)
                imgshape.image = UIImage(named: "trapezoid.png")
                errordisp.hidden = true
                answer1.hidden = false
                answer2.hidden = false
            }
        }
        else if selectedsegment == "triangle"
        {
            if text1.text == "" || text2.text == "" || text3.text == "" || validate(text1.text!) == false || validate(text2.text!) == false || validate(text3.text!) == false
            {
            errordisp.text = "Invalid input"
            answer1.hidden = true
            answer2.hidden = true
            }
            else
            {
            ans1 = ((Double(hvaluelabel.text!)!) * (Double(text1.text!)!)) / 2
            ans2 = (Double(text1.text!)!) + (Double(text2.text!)!) + (Double(text3.text!)!)
            imgshape.image = UIImage(named: "triangle.jpg")
            errordisp.hidden = true
            answer1.hidden = false
            answer2.hidden = false
            }
        }
        else if selectedsegment == "circle"
        {
           ans1 = 3.14 * ((Double(valuelabel.text!)!) * (Double(valuelabel.text!)!))
            ans2 = 2 * 3.14 * (Double(valuelabel.text!)!)
            imgshape.image = UIImage(named: "circle.png")
        }
        else if selectedsegment == "cube"
        {
            if text1.text == "" || validate(text1.text!) == false
            {
            errordisp.text = "Invalid input"
            answer1.hidden = true
            answer2.hidden = true
            }
            else
            {
            ans1 = (Double(text1.text!)!) * (Double(text1.text!)!) * (Double(text1.text!)!)
            ans2 = 6 * ((Double(text1.text!)!) * (Double(text1.text!)!))
            imgshape.image = UIImage(named: "cube.jpg")
            errordisp.hidden = true
            answer1.hidden = false
            answer2.hidden = false
            }
                
        }
        else if selectedsegment == "pyramid"
        {
            if text1.text == "" || text2.text == "" || validate(text1.text!) == false || validate(text2.text!) == false
            {
                errordisp.text = "Invalid input"
                answer1.hidden = true
                answer2.hidden = true
            }
            else
            {
            ans1 = (Double(text1.text!)! * Double(text2.text!)! * Double(hvaluelabel.text!)!) / 3
            
            part1 = (Double(text1.text!)! * Double(text2.text!)!)
            part2 = (Double(text1.text!)! * sqrt((Double(text2.text!))!/2) * (Double(text2.text!)!/2) + (Double(hvaluelabel.text!)! * (Double(hvaluelabel.text!)!)))
            ans2 = part1 + part2
            imgshape.image = UIImage(named: "pyramid.jpg")
            errordisp.hidden = true
            answer1.hidden = false
            answer2.hidden = false
            }
        }
        else if selectedsegment == "prism"
        {
            
            if text1.text == "" || text2.text == "" || validate(text1.text!) == false || validate(text2.text!) == false
            {
                errordisp.text = "Invalid input"
                answer1.hidden = true
                answer2.hidden = true
            }
            else
            {
                ans1 = (Double(text1.text!)! * Double(text2.text!)! * Double(hvaluelabel.text!)!)
                ans2 = (2 * Double(text1.text!)! * Double(text2.text!)!) + (2 * (Double(text1.text!)! + Double(text1.text!)!) * Double(hvaluelabel.text!)!)
                imgshape.image = UIImage(named: "prism.png")
                errordisp.hidden = true
                answer1.hidden = false
                answer2.hidden = false
                
            }
        }
        else if selectedsegment == "cone"
        {
            ans1 = 3.14 * (Double(valuelabel.text!)! * Double(valuelabel.text!)!) * Double(hvaluelabel.text!)!
            ans2 = ( 3.14 * Double(valuelabel.text!)! ) * (Double(valuelabel.text!)! + sqrt((Double(hvaluelabel.text!)! * Double(hvaluelabel.text!)!) + (Double(valuelabel.text!)! * Double(valuelabel.text!)!)))
            imgshape.image = UIImage(named: "cone.png")
        }
        else if selectedsegment == "cylinder"
        {
            ans1 = 3.14 * Double(valuelabel.text!)! * Double(valuelabel.text!)! * Double(hvaluelabel.text!)!
            ans2 = 2 * 3.14 * Double(valuelabel.text!)! * ( Double(hvaluelabel.text!)! + Double(valuelabel.text!)!)
            imgshape.image = UIImage(named: "cylinder.jpg")
        }
        else if selectedsegment == "sphere"
        {
            ans1 = (4 * 3.14 * Double(valuelabel.text!)! * Double(valuelabel.text!)! * Double(valuelabel.text!)!) / 3
            ans2 = 4 * 3.14 * Double(valuelabel.text!)! * Double(valuelabel.text!)!
            imgshape.image = UIImage(named: "sphere.jpg")
        }
        
        
        
    
        if selectedsegment == "square" || selectedsegment == "rectangle" || selectedsegment == "trapezoid" || selectedsegment == "triangle"
        {
            answer1.text = String(format:" Area : %.2f", ans1)
            answer2.text = String(format:" Perimeter : %.2f", ans2)
        }
            else if selectedsegment == "circle"
        {
            answer1.text = String(format:" Area : %.2f", ans1)
            answer2.text = String(format:"Circumference : %.2f", ans2)
        }
        else if selectedsegment == "cube" || selectedsegment == "pyramid" || selectedsegment == "prism" || selectedsegment == "cone" || selectedsegment == "cylinder" || selectedsegment == "sphere"
        {
            answer1.text = String(format:"Volume : %.2f", ans1)
            answer2.text = String(format:"Area : %.2f", ans2)
        }
        
    }
    
    func cal()
    {
        if selectedsegment == "square"
        {
            
            if text1.text == "" ||  validate(text1.text!) == false
            {
                errordisp.text = "Invalid input"
                answer1.hidden = true
                answer2.hidden = true
            }
            else
            {
                ans1 = (Double(text1.text!)! * Double(text1.text!)!)
                ans2 = 4 * (Double(text1.text!)!)
                imgshape.image = UIImage(named: "square.jpg")
                errordisp.hidden = true
                answer1.hidden = false
                answer2.hidden = false
            }
            
        }
        else if selectedsegment == "rectangle"
        {
            
            if text1.text == "" || text2.text == "" ||  validate(text1.text!) == false || validate(text2.text!) == false
            {
                errordisp.text = "Invalid input"
                answer1.hidden = true
                answer2.hidden = true
                
            }
            else
            {
                ans1 = (Double(text1.text!)! * Double(text2.text!)!)
                ans2 = 2 * (Double(text1.text!)! + Double(text2.text!)!)
                imgshape.image = UIImage(named: "rectangle.jpg")
                errordisp.hidden = true
                answer1.hidden = false
                answer2.hidden = false
            }
            
        }
        else if selectedsegment == "trapezoid"
        {
            
            if text1.text == "" || text2.text == "" || text3.text == "" || text4.text == "" || validate(text1.text!) == false || validate(text2.text!) == false || validate(text3.text!) == false
            {
                errordisp.text = "Invalid input"
                answer1.hidden = true
                answer2.hidden = true
            }
            else
            {
                ans1 = ((Double(text1.text!)! + Double(text2.text!)!) / 2 ) * (Double(hvaluelabel.text!)!)
                ans2 = (Double(text1.text!)!) + (Double(text2.text!)!) + (Double(text3.text!)!) + (Double(text4.text!)!)
                imgshape.image = UIImage(named: "trapezoid.png")
                errordisp.hidden = true
                answer1.hidden = false
                answer2.hidden = false
            }
        }
        else if selectedsegment == "triangle"
        {
            if text1.text == "" || text2.text == "" || text3.text == "" || validate(text1.text!) == false || validate(text2.text!) == false || validate(text3.text!) == false
            {
                errordisp.text = "Invalid input"
                answer1.hidden = true
                answer2.hidden = true
            }
            else
            {
                ans1 = ((Double(hvaluelabel.text!)!) * (Double(text1.text!)!)) / 2
                ans2 = (Double(text1.text!)!) + (Double(text2.text!)!) + (Double(text3.text!)!)
                imgshape.image = UIImage(named: "triangle.jpg")
                errordisp.hidden = true
                answer1.hidden = false
                answer2.hidden = false
            }
        }
        else if selectedsegment == "circle"
        {
            ans1 = 3.14 * ((Double(valuelabel.text!)!) * (Double(valuelabel.text!)!))
            ans2 = 2 * 3.14 * (Double(valuelabel.text!)!)
            imgshape.image = UIImage(named: "circle.png")
        }
        else if selectedsegment == "cube"
        {
            if text1.text == "" || validate(text1.text!) == false
            {
                errordisp.text = "Invalid input"
                answer1.hidden = true
                answer2.hidden = true
            }
            else
            {
                ans1 = (Double(text1.text!)!) * (Double(text1.text!)!) * (Double(text1.text!)!)
                ans2 = 6 * ((Double(text1.text!)!) * (Double(text1.text!)!))
                imgshape.image = UIImage(named: "cube.jpg")
                errordisp.hidden = true
                answer1.hidden = false
                answer2.hidden = false
            }
            
        }
        else if selectedsegment == "pyramid"
        {
            if text1.text == "" || text2.text == "" || validate(text1.text!) == false || validate(text2.text!) == false
            {
                errordisp.text = "Invalid input"
                answer1.hidden = true
                answer2.hidden = true
            }
            else
            {
                ans1 = (Double(text1.text!)! * Double(text2.text!)! * Double(hvaluelabel.text!)!) / 3
                
                part1 = (Double(text1.text!)! * Double(text2.text!)!)
                part2 = (Double(text1.text!)! * sqrt((Double(text2.text!))!/2) * (Double(text2.text!)!/2) + (Double(hvaluelabel.text!)! * (Double(hvaluelabel.text!)!)))
                ans2 = part1 + part2
                imgshape.image = UIImage(named: "pyramid.jpg")
                errordisp.hidden = true
                answer1.hidden = false
                answer2.hidden = false
            }
        }
        else if selectedsegment == "prism"
        {
            
            if text1.text == "" || text2.text == "" || validate(text1.text!) == false || validate(text2.text!) == false
            {
                errordisp.text = "Invalid input"
                answer1.hidden = true
                answer2.hidden = true
            }
            else
            {
                ans1 = (Double(text1.text!)! * Double(text2.text!)! * Double(hvaluelabel.text!)!)
                ans2 = (2 * Double(text1.text!)! * Double(text2.text!)!) + (2 * (Double(text1.text!)! + Double(text1.text!)!) * Double(hvaluelabel.text!)!)
                imgshape.image = UIImage(named: "prism.png")
                errordisp.hidden = true
                answer1.hidden = false
                answer2.hidden = false
                
            }
        }
        else if selectedsegment == "cone"
        {
            ans1 = 3.14 * (Double(valuelabel.text!)! * Double(valuelabel.text!)!) * Double(hvaluelabel.text!)!
            ans2 = ( 3.14 * Double(valuelabel.text!)! ) * (Double(valuelabel.text!)! + sqrt((Double(hvaluelabel.text!)! * Double(hvaluelabel.text!)!) + (Double(valuelabel.text!)! * Double(valuelabel.text!)!)))
            imgshape.image = UIImage(named: "cone.png")
        }
        else if selectedsegment == "cylinder"
        {
            ans1 = 3.14 * Double(valuelabel.text!)! * Double(valuelabel.text!)! * Double(hvaluelabel.text!)!
            ans2 = 2 * 3.14 * Double(valuelabel.text!)! * ( Double(hvaluelabel.text!)! + Double(valuelabel.text!)!)
            imgshape.image = UIImage(named: "cylinder.jpg")
        }
        else if selectedsegment == "sphere"
        {
            ans1 = (4 * 3.14 * Double(valuelabel.text!)! * Double(valuelabel.text!)! * Double(valuelabel.text!)!) / 3
            ans2 = 4 * 3.14 * Double(valuelabel.text!)! * Double(valuelabel.text!)!
            imgshape.image = UIImage(named: "sphere.jpg")
        }
        
        
        
        
        if selectedsegment == "square" || selectedsegment == "rectangle" || selectedsegment == "trapezoid" || selectedsegment == "triangle"
        {
            answer1.text = String(format:" Area : %.2f", ans1)
            answer2.text = String(format:" Perimeter : %.2f", ans2)
        }
        else if selectedsegment == "circle"
        {
            answer1.text = String(format:" Area : %.2f", ans1)
            answer2.text = String(format:"Circumference : %.2f", ans2)
        }
        else if selectedsegment == "cube" || selectedsegment == "pyramid" || selectedsegment == "prism" || selectedsegment == "cone" || selectedsegment == "cylinder" || selectedsegment == "sphere"
        {
            answer1.text = String(format:"Volume : %.2f", ans1)
            answer2.text = String(format:"Area : %.2f", ans2)
        }
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if textField == self.text1{
            textField.resignFirstResponder()
        }
        return true
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        if (string.characters.count == 0) {
            return true
        }
        let _acceptableCharacters = "0123456789."
        let cs = NSCharacterSet(charactersInString: _acceptableCharacters)
        let filtered = string.componentsSeparatedByCharactersInSet(cs).filter {!$0.isEmpty }
        let str = filtered.joinWithSeparator("")
        
        return (string != str)
    }
    func validate(value: String) -> Bool {
        let PHONE_REGEX = "\\d+\\.?\\d*"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX)
        let result =  phoneTest.evaluateWithObject(value)
        return result
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Picker.delegate = self
        Picker.dataSource = self
        radiustext.hidden = true
        valuelabel.hidden = true
        stepper.hidden = true
        heighttext.hidden = true
        hvaluelabel.hidden = true
        slider.hidden = true
        side1.hidden = true
        side2.hidden = true
        side3.hidden = true
        side4.hidden = true
        text1.text = "1"
        text2.text = "1"
        text3.text = "1"
        text4.text = "1"
        text1.hidden = true
        text2.hidden = true
        text3.hidden = true
        text4.hidden = true
        imgshape.hidden = true
        text1.becomeFirstResponder()
        self.text1.delegate = self
        self.text2.delegate = self
        self.text3.delegate = self
        self.text4.delegate = self
        
        
        
       
       array = ["square","rectangle","trapezoid","triangle","circle"]
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        text1.resignFirstResponder()
        text2.resignFirstResponder()
        text3.resignFirstResponder()
        text4.resignFirstResponder()
        view.endEditing(true)
    }
    
    
    
}


