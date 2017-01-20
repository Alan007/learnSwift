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
    
    override  init() {
        
        name = "张"
        
        super.init()
        
    }
    
}
