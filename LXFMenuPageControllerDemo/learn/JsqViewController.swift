//
//  JsqViewController.swift
//  learnSwift
//
//  Created by Tttttty on 2017/1/20.
//  Copyright © 2017年 LXF. All rights reserved.
//
import UIKit

import Foundation
class JsqViewController : UIViewController {
    var number1 : UITextField?
    var number2 : UITextField?
    var resultLab : UILabel?

    
    override func viewDidLoad() {
        
        setUp()
    }
    func click() -> () {
        print("click")
        
        print("\(number1?.text)---\(number2?.text)")
        
        var nb = Int(number1?.text ?? "")
        print(nb)
        
       guard var nb1 = Int(number1?.text ?? ""),
        var nb2 = Int(number2?.text ?? "") else{
             print("都要数字")
            return
        }

        print("\(nb1)---\(nb2)")
        
        resultLab?.text = "\(nb1 + nb2)"
        

        
    }
    func setUp() -> ()  {
        let tf1 = UITextField(frame: CGRect(x: 20, y: 20, width: 100, height: 30))
        tf1.borderStyle = .roundedRect
        tf1.text = "0"
        view.addSubview(tf1)
        
        let tf2 = UITextField(frame: CGRect(x: 140, y: 20, width: 100, height: 30))
        tf2.borderStyle = .roundedRect
        tf2.text = "0"
        view.addSubview(tf2)
        
        
        number1 = tf1
        number2 = tf2

        
        let l1 = UILabel(frame: CGRect(x: 120, y: 20, width: 20, height: 30))
        l1.text = "+"
        l1.textAlignment = .center
        view.addSubview(l1)
        
        let l2 = UILabel(frame: CGRect(x: 240, y: 20, width: 20, height: 30))
        l2.text = "="
        l2.textAlignment = .center
        view.addSubview(l2)
        
        
        let l3 = UILabel(frame: CGRect(x: 240, y: 20, width: 60, height: 30))
        l3.text = "0"
        l3.textAlignment = .center
        view.addSubview(l3)
        resultLab = l3

        
        let btn = UIButton()
        btn.frame = CGRect(x: 20, y: 200, width: 200, height: 30)
        btn.setTitle("计算", for: .normal)
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.addTarget(self, action: #selector(click), for: .touchUpInside)
        view.addSubview(btn)
        
        
    }

}
