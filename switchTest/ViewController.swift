//
//  ViewController.swift
//  switchTest
//
//  Created by gdcp on 2018/3/13.
//  Copyright © 2018年 gdcp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.lightGray
        //创建控件实例并为属性赋值
        let swi = UISwitch(frame: CGRect(x: 100, y: 100, width: 30, height: 30))
        swi.onTintColor = UIColor.green
        swi.tintColor = UIColor.gray
        swi.thumbTintColor = UIColor.white
        swi.addTarget(self, action: #selector(switchDidChange(swi:)), for: UIControlEvents.touchUpInside)
        self.view.addSubview(swi)
        
        
        let page = UIPageControl(frame: CGRect(x: 150, y: 150, width: 100, height: 30))
        page.numberOfPages = 4
        page.currentPageIndicatorTintColor = UIColor.white
        page.addTarget(self, action: #selector(changeValue(page:)), for: .valueChanged)
        self.view.addSubview(page)
        
        let seg = UISegmentedControl(items: ["1","2","3","4"])
        seg.frame = CGRect(x: 100, y: 200, width: 200, height: 30)
        seg.insertSegment(withTitle: "5", at: 4, animated: false)
        seg.removeSegment(at: 4, animated: false)
        seg.setTitle("", forSegmentAt: 1)
        self.view.addSubview(seg)
        
        let slider = UISlider()
        slider.frame = CGRect(x:100,y:300,width:100,height:30)
        slider.minimumValue = 0
        slider.maximumValue = 10
        slider.minimumTrackTintColor = UIColor.gray
        slider.maximumTrackTintColor = UIColor.white
        slider.thumbTintColor = UIColor.green
        slider.addTarget(self,action:#selector(ValueChanged(slider:)),for: .valueChanged)
        self.view.addSubview(slider)
        
        let indicator = UIActivityIndicatorView(activityIndicatorStyle: .gray)
        indicator.center = CGPoint(x: self.view.frame.size.width / 2, y: self.view.frame.size.height / 2)
        self.view.addSubview(indicator)
        indicator.startAnimating()
        
        
        let progressView = UIProgressView(progressViewStyle: .default)
        progressView.frame = CGRect(x: 100, y: 400, width: 100, height: 30)
        progressView.progressTintColor = UIColor.blue
        progressView.trackTintColor = UIColor.black
        progressView.progress = 0.2
        self.view.addSubview(progressView)
        
        let step = UIStepper(frame: CGRect(x: 100, y: 500, width: 100, height: 20))
        step.maximumValue = 10
        step.minimumValue = 0
        step.autorepeat = true
        step.isContinuous = true
        step.stepValue = 1 //step long
        step.addTarget(self, action: #selector(), for: .valueChanged)
        
    }
    func switchDidChange(swi:UISwitch){
        if swi.isOn {
            swi.onTintColor = UIColor.green
            self.view.backgroundColor = UIColor.white
        }
        else{
            self.view.backgroundColor = UIColor.darkGray
        }
    }
    func changeValue(page:UIPageControl){
        print(page.currentPage)
    }
    func ValueChanged(slider:UISlider){
        print(slider.value)
    }
    func StepValueChange(step:UIStepper)
    {
        print(step.value)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

