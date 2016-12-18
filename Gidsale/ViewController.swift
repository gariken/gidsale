//
//  ViewController.swift
//  Gidsale
//
//  Created by Александр on 20.10.16.
//  Copyright © 2016 Александр. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{

        
    @IBOutlet weak var uiscrollview: UIScrollView!
    @IBOutlet weak var searchTextField: UITextField!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        searchTextField.delegate = self
        toolbar()
    }
    

    
    func toolbar(){
        let toolbar = UIToolbar.init()
        toolbar.sizeToFit()
        let barButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.done, target: self, action: #selector(dismissKeyboard))
        toolbar.items = [barButton]
        searchTextField.inputAccessoryView = toolbar
    }
    
    func dismissKeyboard(){
        searchTextField.resignFirstResponder()
    }
    
    func keyboard(password: UITextField) -> Bool{
        password.resignFirstResponder()
        return true
    }



}

