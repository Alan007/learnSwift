//
//  Person.swift
//  learnSwift
//
//  Created by Tttttty on 2017/1/20.
//  Copyright © 2017年 LXF. All rights reserved.
//

import Foundation
//构造函数  分配空间  初始化

class Person: NSObject{
    
    var  name: String
    
    private var weight: String?
    //重写
    override  init() {
        
        name = "张"
        print(name)
        super.init()
        
    }
    
    
    //重载  可以给自己的属性  设置
    init(name: String){
    
        self.name = name
        
        super.init()
        
        
        setValue("ok", forKey: "111")
    }
    
    
   // init(dic: NSDictionary) {
       // super.init()
        //setValuesForKeys(dic)
    //}
    
}
