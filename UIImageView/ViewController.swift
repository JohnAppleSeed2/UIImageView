//
//  ViewController.swift
//  UIImageView
//
//  Created by JOHN SANCHEZ on 9/6/18.
//  Copyright © 2018 JOHN SANCHEZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelNumber: UILabel!
    @IBOutlet weak var nextOutlet: UIButton!
    @IBOutlet weak var backOutlet: UIButton!
    
    var imageInt = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    imageInt = 1
   labelNumber.text = String("\(imageInt)/6")
   
    backOutlet.isEnabled = false
    }


    @IBAction func nextButton(_ sender: Any) {
    
    imageInt += 1
    labelNumber.text = String("\(imageInt)/6")
    self.imageGallery()
    }
    
    
    @IBAction func backButton(_ sender: Any) {
    
    imageInt -= 1
    labelNumber.text = String("\(imageInt)/6")
    self.imageGallery()
    }
  
    func imageGallery () {
        if imageInt == 1 {
        backOutlet.isEnabled = false
        imageView.image = UIImage (named: "image1.jpg")
        }
        if imageInt == 2 {
        backOutlet.isEnabled = true
        imageView.image = UIImage (named: "image2.jpg")
        }
        if imageInt == 3 {
        imageView.image = UIImage (named: "image3.jpg")
        }
        if imageInt == 4 {
        imageView.image = UIImage (named: "image4.jpeg")
        }
        if imageInt == 5 {
        nextOutlet.isEnabled = true
        imageView.image = UIImage (named: "image5.jpg")
        }
        if imageInt == 6 {
        nextOutlet.isEnabled = false
        imageView.image = UIImage (named: "image6.jpg")
        }
    
    
    
    
    
}

}
