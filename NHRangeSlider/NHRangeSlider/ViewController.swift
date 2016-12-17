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
        
        // default slider
        let sliderView = NHRangeSliderView(frame: CGRect(x: 16, y: 20, width: self.view.bounds.width - 32, height: 80) )
        sliderView.sizeToFit()
        self.view.addSubview(sliderView)
       
        let sliderSquareView = NHRangeSliderView(frame: CGRect(x: 16, y: sliderView.frame.maxY + 8,
                                                               width: sliderView.frame.size.width,
                                                               height: sliderView.frame.size.height) )
        sliderSquareView.curvaceousness = 0.0
        sliderSquareView.trackHighlightTintColor = UIColor.red
        sliderSquareView.lowerValue = 20.0
        sliderSquareView.upperValue = 80.0
        sliderSquareView.sizeToFit()
        self.view.addSubview(sliderSquareView)
        
        
        let sliderSquareWithLabelView = NHRangeSliderView(frame: CGRect(x: 16, y: sliderSquareView.frame.maxY + 8,
                                                               width: sliderView.frame.size.width,
                                                               height: sliderView.frame.size.height) )
        sliderSquareWithLabelView.curvaceousness = 0.0
        sliderSquareWithLabelView.trackHighlightTintColor = UIColor.brown
        sliderSquareWithLabelView.lowerValue = 20.0
        sliderSquareWithLabelView.upperValue = 80.0
        sliderSquareWithLabelView.titleLabel?.text = "Slider with title label"
        sliderSquareWithLabelView.sizeToFit()
        self.view.addSubview(sliderSquareWithLabelView)
        
        // slider with labels following the text
        let sliderWithLabelFollowView = NHRangeSliderView(frame: CGRect(x: 16, y: sliderSquareWithLabelView.frame.maxY + 8,
                                                                        width: sliderView.frame.size.width,
                                                                        height: sliderView.frame.size.height) )
        sliderWithLabelFollowView.trackHighlightTintColor = UIColor.black
        sliderWithLabelFollowView.lowerValue = 30.0
        sliderWithLabelFollowView.upperValue = 70.0
        sliderWithLabelFollowView.gapBetweenThumbs = 5
        sliderWithLabelFollowView.thumbLabelStyle = .FOLLOW
        sliderWithLabelFollowView.titleLabel?.text = "Slider with labels follow thumbs"
        sliderWithLabelFollowView.sizeToFit()
        self.view.addSubview(sliderWithLabelFollowView)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

