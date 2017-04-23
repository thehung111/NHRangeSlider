//
//  ViewController.swift
//  SliderExample
//
//  Created by Hung on 18/12/16.
//  Copyright © 2016 Hung. All rights reserved.
//

import UIKit
import NHRangeSlider

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
        sliderSquareView.thickness = 10.0
        sliderSquareView.curvaceousness = 0.0
        sliderSquareView.trackHighlightTintColor = UIColor.red
        sliderSquareView.lowerValue = 20.0
        sliderSquareView.upperValue = 80.0
        sliderSquareView.sizeToFit()
        self.view.addSubview(sliderSquareView)
        
        
        let sliderSquareWithLabelView = NHRangeSliderView(frame: CGRect(x: 16, y: sliderSquareView.frame.maxY + 8,
                                                                        width: sliderView.frame.size.width,
                                                                        height: sliderView.frame.size.height) )
        sliderSquareWithLabelView.thickness = 8.0
        sliderSquareWithLabelView.curvaceousness = 0.0
        sliderSquareWithLabelView.trackHighlightTintColor = UIColor.brown
        sliderSquareWithLabelView.lowerValue = 20.0
        sliderSquareWithLabelView.upperValue = 80.0
        sliderSquareWithLabelView.stepValue = 5.0
        sliderSquareWithLabelView.titleLabel?.text = "Slider with title label and step value (5)"
        sliderSquareWithLabelView.sizeToFit()
        self.view.addSubview(sliderSquareWithLabelView)
        
        // slider with labels following the text
        let sliderWithLabelFollowView = NHRangeSliderView(frame: CGRect(x: 16, y: sliderSquareWithLabelView.frame.maxY + 8,
                                                                        width: sliderView.frame.size.width,
                                                                        height: sliderView.frame.size.height) )
        sliderWithLabelFollowView.thickness = 4.0
        sliderWithLabelFollowView.trackHighlightTintColor = UIColor.black
        sliderWithLabelFollowView.lowerValue = 30.0
        sliderWithLabelFollowView.upperValue = 70.0
        sliderWithLabelFollowView.gapBetweenThumbs = 5
        
        sliderWithLabelFollowView.thumbLabelStyle = .FOLLOW
        sliderWithLabelFollowView.titleLabel?.text = "Slider with labels follow thumbs"
        sliderWithLabelFollowView.sizeToFit()
        self.view.addSubview(sliderWithLabelFollowView)
        
        // custom string format example
        let sliderCustomStringView = NHRangeSliderView(frame: CGRect(x: 16, y: sliderWithLabelFollowView.frame.maxY + 8,
                                                                        width: sliderView.frame.size.width,
                                                                        height: sliderView.frame.size.height) )
        sliderCustomStringView.trackHighlightTintColor = UIColor.black
        sliderCustomStringView.lowerValue = 30.0
        sliderCustomStringView.upperValue = 70.0
        sliderCustomStringView.stepValue = 10
        sliderCustomStringView.gapBetweenThumbs = 10
        
        sliderCustomStringView.thumbLabelStyle = .FOLLOW
        
        sliderCustomStringView.titleLabel?.text = "Stepped slider with custom format"
        sliderCustomStringView.lowerDisplayStringFormat = "Min: $%.0f"
        sliderCustomStringView.upperDisplayStringFormat = "Max: $%.0f"
        
        sliderCustomStringView.sizeToFit()
        self.view.addSubview(sliderCustomStringView)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

