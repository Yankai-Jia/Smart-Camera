//
//  ViewController.swift
//  Imagine
//
//  Created by Yankai Jia on 7/20/18.
//  Copyright © 2018 Yankai Jia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet fileprivate var captureButton: UIButton!
    
    @IBOutlet fileprivate var capturePreviewView: UIView!
    
    @IBOutlet fileprivate var photoModeButton: UIButton!
    
    @IBOutlet fileprivate var videoModeButton: UIButton!
    
    @IBOutlet fileprivate var photosReviewButton: UIButton!
   
    @IBOutlet fileprivate var toggleCameraButton: UIButton!
    
    @IBOutlet fileprivate var toggleFlashButton: UIButton!

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController {
    override func viewDidLoad() {
        
        func styleCaptureButton() {
            captureButton.layer.borderColor = UIColor.black.cgColor
            captureButton.layer.borderWidth = 2
            
            captureButton.layer.cornerRadius = min(captureButton.frame.width, captureButton.frame.height) / 2
        }
        
        styleCaptureButton()
        
    }
}

