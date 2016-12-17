//
//  ViewController.swift
//  NHRangeSlider
//
//  Created by Hung on 17/12/16.
//  Copyright © 2016 Hung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let sliderView = NHRangeSliderView(frame: CGRect(x: 8, y: 20, width: self.view.bounds.width - 8, height: 80) )
        self.view.addSubview(sliderView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

