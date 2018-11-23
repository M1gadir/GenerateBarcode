//
//  ViewController.swift
//  generatenumber
//
//  Created by My Macbook on 23/11/18.
//  Copyright © 2018 TB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var text1: UITextField!
    @IBAction func generate(_ sender: Any) {
        if let myString = text1.text
        {
            let data = myString.data(using: .ascii, allowLossyConversion: false)
            let filter = CIFilter(name: "CIQRCodeGenerator")
            filter?.setValue(data , forKey: "inputMessage")
            
            let img = UIImage(ciImage: (filter?.outputImage)!)
            image.image = img
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

