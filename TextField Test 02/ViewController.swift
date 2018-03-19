//
//  ViewController.swift
//  TextField Test 02
//
//  Created by D7703_07 on 2018. 3. 19..
//  Copyright © 2018년 D7703_07. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var myTextField: UITextField!
    
    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // delegate 연결
        myTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func buttonPressed(_ sender: Any) {
        myLabel.text = myTextField.text
        myTextField.text = ""
        
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        
        print("I pressed return Key")
        //키패드내림
        myTextField.resignFirstResponder()
        return true
    }
    
    
    

}

