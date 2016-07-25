//
//  ViewController.swift
//  Is It Prime
//
//  Created by Gladys Umali on 7/25/16.
//  Copyright © 2016 Joy Umali. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textField: UITextField!
    @IBOutlet var responseLabel: UILabel!

    
    
    @IBAction func submitButtonTapped(_ sender: AnyObject) {
        
        var number = Int(textField.text!)
        
        var isPrime = true
        
        if number == 1 {
            
            isPrime = false
            
        }
        
        var i = 2
        
        while i < number {
            
            if number! % i == 0 {
                
                isPrime = false
                
            }
            
            i += 1
            
        }
        
        if isPrime == true && number > 1 {
        responseLabel.text = "\(textField.text!) is a prime number!"
        }
        else if isPrime == false || number == 0 {
        responseLabel.text = "\(textField.text!) is NOT a prime number!"
        }
        else {
        responseLabel.text = "Please enter a positive integer."
        }

        
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

