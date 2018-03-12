//
//  ViewController.swift
//  UIButtonDemo
//
//  Created by gdcp on 2018/3/12.
//  Copyright © 2018年 gdcp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let button = UIButton(type: .system)
        button.frame = CGRect(x: 100, y: 100, width: 200, height: 50)
        button.backgroundColor = UIColor.red
        button.setTitle("点我一下", for: .normal)
        button.addTarget(self, action: #selector(ViewController.changeColor), for: .touchUpInside)
        self.view.addSubview(button)

    }
    func changeColor(){
        self.view.backgroundColor = UIColor(red: CGFloat(arc4random()%256)/255, green: CGFloat(arc4random()%256)/255, blue: CGFloat(arc4random()%256)/255, alpha: CGFloat(arc4random()%256)/255)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

