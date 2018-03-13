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
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

