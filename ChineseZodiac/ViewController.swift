//
//  ViewController.swift
//  ChineseZodiac
//
//  Created by Jake Lin on 20/08/2014.
//  Copyright (c) 2014 rushjet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet weak var yearOfBirth: UITextField!
    @IBOutlet weak var image: UIImageView!
    
    let offset = 4
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        yearOfBirth.resignFirstResponder()
    }

    @IBAction func okTapped(sender: AnyObject) {
        yearOfBirth.resignFirstResponder()
        if let year = Int(yearOfBirth.text!) {
            let number = year < 4 ? year + 8 : (year - 4) % 12
            let imageName = String(number)
            image.image = UIImage(named: imageName)
        }
    }
}

