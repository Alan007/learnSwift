//
//  Student.swift
//  learnSwift
//
//  Created by Tttttty on 2017/1/20.
//  Copyright © 2017年 LXF. All rights reserved.
//

import Foundation
class Student: Person {
    
    var  no: String
    
     //重写父类方法
    override init() {
        no = "001"
        print(no)
        super.init()
    }
}
