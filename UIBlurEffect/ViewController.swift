//
//  ViewController.swift
//  UIBlurEffect
//
//  Created by Mamadou Kaba on 6/15/16.
//  Copyright © 2016 Mamadou Kaba. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Properties
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Construct Image
        let image = UIImage(named: "big-sky-.jpg")
        //Construct ImageView and put image inside of it.
        let imageView = UIImageView(image: image)
        //Make image size fit screen size.
        imageView.sizeToFit()
        //Add ImageView to the SuperView.
        view.addSubview(imageView)
        
        
        //Construct Blur Effect
        let blurEffect = UIBlurEffect(style: .Light)
        //Construct Blur View
        let blurView = UIVisualEffectView(effect: blurEffect)
        //Set blurView size to the imageView size.
        blurView.frame = imageView.bounds
        //Add blur view to the view.
        view.addSubview(blurView)
    }
}

