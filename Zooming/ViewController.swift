//
//  ViewController.swift
//  Zooming
//
//  Created by Березин Дмитрий Борисович on 17/02/2019.
//  Copyright © 2019 Dmitry Berezin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var imageView = UIImageView()
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = UIImage(named: "s1200.jpg")
        imageView.sizeToFit()
        
        scrollView.delegate = self
        scrollView.minimumZoomScale = 0.1
        scrollView.maximumZoomScale = 4.0
        scrollView.addSubview(imageView)
    }


}

extension ViewController:  UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
    
}
