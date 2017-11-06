//
//  PopVC.swift
//  Pixel-City
//
//  Created by Franziska Kammerl on 11/4/17.
//  Copyright © 2017 Franziska Kammerl. All rights reserved.
//

import UIKit

class PopVC: UIViewController, UIGestureRecognizerDelegate {
    
    // Outlets
    @IBOutlet weak var popImageView: UIImageView!
    @IBOutlet weak var imageHeaderLbl: UILabel!
   
    
    // Variables
    var passedImage: UIImage!
    var passedHeading: String?
    
    func initData(for image: UIImage, with title: String?) {
        self.passedImage = image
        self.passedHeading = title
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        popImageView.image = passedImage
        imageHeaderLbl.text = passedHeading 
        addDoubleTap() 
    }
    
    func addDoubleTap() {
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(screenWasDoubleTapped))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
    }
    
    @objc func screenWasDoubleTapped() {
        dismiss(animated: true, completion: nil)
    }

}
