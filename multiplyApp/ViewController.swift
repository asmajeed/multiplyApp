//
//  ViewController.swift
//  multiplyApp
//
//  Created by asmajeed on 9/14/16.
//  Copyright © 2016 Amer. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var labelAnswer: UILabel!
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var symbol: UILabel!

    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    
    }
    
    @IBAction func buttonAdd(_ sender: AnyObject)
    {
        let textBoxString = textField1.text
        let textBox = Double(textBoxString!)
        let textBox2String = textField2.text
        let textBox2 = Double(textBox2String!)
        let total = textBox! + textBox2!
        labelAnswer.text = String(format: "%.2f", total) // /() can cast a string as a double
        if total == 64.0
        {
            photo.image = UIImage(named:"dryBonesAndBoo")
        }
        else if total.truncatingRemainder(dividingBy: 2) == 0
        {
            photo.image = UIImage(named:"app")
        }
        else if total.truncatingRemainder(dividingBy: 2) == 1
        {
            photo.image = UIImage(named:"funny")
        }
        symbol.text = "+"
    }

    @IBAction func buttonSubtract(_ sender: AnyObject)
    {
        let textBoxString = textField1.text
        let textBox = Double(textBoxString!)
        let textBox2String = textField2.text
        let textBox2 = Double(textBox2String!)
        let total = textBox! - textBox2!
        labelAnswer.text = String(format: "%.2f", total)
        if total == 64.0
        {
            photo.image = UIImage(named:"dryBonesAndBoo")
        }
        else if total.truncatingRemainder(dividingBy: 2) == 0
        {
            photo.image = UIImage(named:"app")
        }
        else if total.truncatingRemainder(dividingBy: 2) == 1
        {
            photo.image = UIImage(named:"funny")
        }
        symbol.text = "-"
    }
    
    @IBAction func buttonMultiply(_ sender: AnyObject)
    {
        let textBoxString = textField1.text
        let textBox = Double(textBoxString!)
        let textBox2String = textField2.text
        let textBox2 = Double(textBox2String!)
        let totalMultipy = textBox! * textBox2!
        labelAnswer.text = String(format: "%.2f", totalMultipy)
        
        if totalMultipy == 64.0
        {
            photo.image = UIImage(named:"dryBonesAndBoo")
        }
        else if totalMultipy.truncatingRemainder(dividingBy: 2) == 0
        {
            photo.image = UIImage(named:"app")
        }
        else if totalMultipy.truncatingRemainder(dividingBy: 2) == 1
        {
            photo.image = UIImage(named:"funny")
        }
        symbol.text = "X"
    }
    
    @IBAction func buttonDivide(_ sender: AnyObject)
    {
        let textBoxString = textField1.text
        let textBox = Double(textBoxString!)
        let textBox2String = textField2.text
        let textBox2 = Double(textBox2String!)
        let totalDivide = textBox! / textBox2!
        labelAnswer.text = String(format: "%.2f", totalDivide)
        if totalDivide == 64.0
        {
            photo.image = UIImage(named:"dryBonesAndBoo")
        }
        else if totalDivide.truncatingRemainder(dividingBy: 2) == 0
        {
            photo.image = UIImage(named:"app")
        }
        else if totalDivide.truncatingRemainder(dividingBy: 2) == 1
        {
            photo.image = UIImage(named:"funny")
        }
        symbol.text = "/"
    }
    
    

}

