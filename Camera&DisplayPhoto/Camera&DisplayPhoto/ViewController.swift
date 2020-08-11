//
//  ViewController.swift
//  Camera&DisplayPhoto
//
//  Created by Julie Ham on 8/11/20.
//  Copyright © 2020 Julie Ham. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        // Do any additional setup after loading the view.
    }

    @IBAction func takeSelfieTapped(_ sender: Any) {
    imagePicker.sourceType = .camera
        present(imagePicker, animated: true, completion: nil)
    }

    @IBAction func photoLibraryTapped(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBOutlet weak var displayImage: UIImageView!
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            displayImage.image = selectedImage
        }
        
        imagePicker.dismiss(animated: true, completion: nil)
    }
}

