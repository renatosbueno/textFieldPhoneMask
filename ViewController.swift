//
//  ViewController.swift
//  DesafioMascaraTels
//
//  Created by Swift-Noturno on 30/03/16.
//  Copyright © 2016 Swift. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate {

    
    @IBOutlet weak var textFieldHomePhone: UITextField!
    
    @IBOutlet weak var textFieldCelphone: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        self.textFieldHomePhone.delegate = self
        self.textFieldCelphone.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {

     
        
        if (textField == self.textFieldHomePhone) {
       
        
        if (string == "0" || string == "1" || string == "2" || string == "3" || string == "4"||string == "5" || string == "6" || string == "7" || string == "8" || string == "9") && (range.location <= 13) {
    
            
           
            switch (range.location) {
                
            case 0:
                self.textFieldHomePhone.text = "("
           
            case 3:
                self.textFieldHomePhone.text = "\(self.textFieldHomePhone.text!)" + ") "
                
            case 9:
                self.textFieldHomePhone.text = "\(self.textFieldHomePhone.text!)" + "-"
            
                
            default:
                break
                
            
            }
             return true
                
            }
            if (range.length == 1) {
                
                self.textFieldHomePhone.text = ""
            }
            
       
        }
        
        if (textField == self.textFieldCelphone) {
            
            
   if (string == "0" || string == "1" || string == "2" || string == "3" || string == "4"||string == "5" || string == "6" || string == "7" || string == "8" || string == "9") && (range.location <= 14) {
                
                
                
                switch (range.location) {
                    
                case 0:
                    self.textFieldCelphone.text = "("
                    
                case 3:
                    self.textFieldCelphone.text = "\(self.textFieldCelphone.text!)" + ") "
                    
                case 10:
                    self.textFieldCelphone.text = "\(self.textFieldCelphone.text!)" + "-"
                    
                    
                default:
                    break
                    
                    
                }
                
                
                return true
                
                
            }
            
            if (range.length == 1) {
                
                
                self.textFieldCelphone.text = ""
                
            }
        }
        
        return false
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        
        
        return true
    }
    

    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.becomeFirstResponder()
    }
    
    override func canBecomeFirstResponder() -> Bool {
        
        return true
        
        
    }
    
    

}

