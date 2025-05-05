//
//  ViewController.swift
//  SeaFood
//
//  Created by Carlos Alonso Camiña on 5/5/25.
//

import UIKit
import Vision

class ViewController: UIViewController,
                        UIImagePickerControllerDelegate,
                        UINavigationControllerDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func cameraTapped(_ sender: UIBarButtonItem) {
    }
}

