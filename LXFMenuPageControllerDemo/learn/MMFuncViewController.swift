//
//  MMFuncViewController.swift
//  learnSwift
//
//  Created by Tttttty on 2017/1/19.
//  Copyright © 2017年 LXF. All rights reserved.
//
import UIKit
import Foundation

class MMFuncViewController: UIViewController {
    
//    var complationCallBack :
    override func viewDidLoad() {
        print(sum(x: 1, y: 2))
        
        print(sum1(num1: 10, num2: 20))
        
        print(sum2(10,20))
        
        print(sum3()) //3  带默认值
    
        
        let  f = sum3
        
        // () -> ()
        let b1  = {
           print("hello")
        }
        //执行闭包
        b1()
        
        //带参数闭包  (Int) -> ()
        let b2 = { (x: Int) -> Int in
              print(x)
            return x + x
        }
        
        print(b2(2))
        
        
        weak var weakSelf = self
        loaddata {
            
            //?可解包   如果self  已经被释放  不会向对象发送getter 发送
            //!
            
            print(weakSelf?.view)
            
            //weakSelf?.view  只是 发送消息没有计算
            // x!+ y!  需要计算
            
        }
        
        
        
        loaddata { [weak self] in
            print(self?.view)
        }
        
        loaddata { [unowned self] in  //self  想当时assign
            print(self.view)
        }
    }
    
    func loaddata(complate: @escaping ()->() ) -> ()  {
        DispatchQueue.main.async {
            complate()
        }
    }
    
    func sum3(_ x: Int = 1 ,_ y: Int = 2) -> Int {
    
        return x + y
    }
    
    func sum2(_ x: Int ,_ y: Int) -> Int {
        for _ in 0...10{
        }
        return x + y
    }
    
    func sum1(num1 x: Int ,num2 y: Int) -> Int {
        return x + y
    }
    //函数定义
    func sum(x: Int ,y: Int) -> Int {
        return x + y
    }
}
