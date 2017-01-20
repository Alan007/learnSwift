
//
//  testSwift.swift
//  learnSwift
//
//  Created by Tttttty on 2017/1/19.
//  Copyright © 2017年 LXF. All rights reserved.
//
import UIKit
import Foundation
class testSwift: UIViewController {
    func dome12() -> () {
        var dic: [[String : AnyObject]] = [
            ["11": "张" as AnyObject,"2222": "嗷嗷" as AnyObject]
        
        ]
        
        var dic2 =  ["11": "张" ,"2222": "嗷嗷"]
            
        dic2["33"] = "湖"
        print(dic2)
        
    }
    func dome11() -> () {
        var array = ["nihao","222"]
        
        for (n,s) in array.enumerated(){
         print("\(n)\(s)")
        
        }
        
        array.append("laowang")
        print(array)
        
        array[0] = "xxx"
        print(array)
        
        array.removeAll(keepingCapacity: true)
        
        
        //没有初始化
        let arr: [Int]
        arr = [Int]()
        
        var array1 = [Int]()
        
        
        for i in 0...9{
        
        array1.append(i)
        }
        
        print(array1)
        
    //合并
        
     // arr　+= array


        
    }
    
    func dome10() -> () {
        let h = 8
        let m = 10
        let s = 11
        let dateStr = "\(h)\(m)\(s)"
        
        
        let dateStr1 = String(format: "%02d:%02d:%02d",h,m,s)

        print(dateStr1)
    }
    //字符串
    func dome9()  {
        
        let str = "你好我的baby"
        
        for c in str.characters{
//         print(c)
        }
         print(str.characters.count)
        print(str.lengthOfBytes(using: .utf8))
        
        var endStr = str + str
        
        print(endStr)
        
        
        let ocstr = str as String// 类型转换
        
        print(str.startIndex)
        
//        let str2 =  ocstr.substring(with: NSMakeRange(1, 2))
//        print(str2)
        
        
        let name = "老王"
        let age = 10
        let title : String? = "Boss"
        let str1 = "\(name)\(10)\(title ?? "")"
        
        print(str1)
        
        

        
    }
    
    
    override func viewDidLoad() {
        dome12()
        
    }
    //先使用let
    func dome1() {
        
        let x = 1  //没有 改过
        let y = 2
        
        var z = 1.2
        print(x+y)
        print(Int(z))
    }
    
    //---------可选项 必须解包
    //定义用？  解包 用！
    func dome2() {
        //可选值
        //none 没有值 some 木一类值
        //
        let x:Optional  = 10
        
        //可能没有值可能有
        //let y :Int? = nil
        let y :Int? = 30
        
        print(x)
        print(y)
        
        print( x!+y!)
        //在解包 有nil  崩，程序员要对!负责        let y :Int? = nil
    }
    
    func dome3()  {
        let y: Int?
        y = 20
        
        print(y)
        
        
        // var 默认值是nil let 没有默认值
        var x:Int?
        x = 100
        x = 200
        print(x)
    }
    
    //三木运算
    func demo4()  {
        let x = 3
        
        x > 2 ? print("da") : print("xiao")
    }
    
    func demo5()  {
        let x : Int? = 100
        let y : Int? = 200
        print(x! + y!)
    }
    
    //mark  if let  var
    func demo6(x: Int?, y: Int?)  {
        //print((x ?? 0) + (y ?? 0))
        
        let oName: String? = "老王"
        let oAge: Int? = nil
        
        
        //非空 执行
        if let name = oName,
            let age = oAge {
            print(name + String(age))
        }
        
        
        //降低层次 结构
        guard let name = oName,let age = oAge  else {
            print("姓名或年龄为nil")
            return
        }
        
        // print(name + String(age))
        
    }
    
    
    //for 循环
    func demo7()  {
        for i in 0..<10{
           // print(i)
        }
        print("-----------")
        
        for i in 0...10 {
          //  print(i)
            
        }
        let r2 = 0...5

        let r1 = 0..<5
        print(r1)
        print(r2)

        
        
        
    }
    
    func dome8()  {
        for i in  (0...10).reversed(){
             print(i)
        }
    }
    
    
    
    
    
}
