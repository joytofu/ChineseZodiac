//
//  ViewController.swift
//  ChineseZodiac
//
//  Created by Kinson Chow on 1/19/16.
//  Copyright © 2016 Kinson Chow. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var YearOfBirth: UITextField!
    @IBOutlet weak var zodiacImage: UIImageView!
    
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
        YearOfBirth.resignFirstResponder()

    }

    @IBAction func submitTap(sender: AnyObject) {
        YearOfBirth.resignFirstResponder()
        
        if let year = Int(YearOfBirth.text!){
           var imageNumber = (year - offset) % 12
            zodiacImage.image = UIImage(named: String(imageNumber))
        }else{
            let alertController = UIAlertController(title: "温馨提示", message: "年份不能为空，请输入年份", preferredStyle: UIAlertControllerStyle.Alert)
            
            let okAction = UIAlertAction(title: "ok", style: UIAlertActionStyle.Default, handler: nil )
            
            alertController.addAction(okAction)
            self.presentViewController(alertController, animated:true, completion:nil )
        }
        
        
    }

}

