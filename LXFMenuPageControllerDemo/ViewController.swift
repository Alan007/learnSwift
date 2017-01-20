//
//  ViewController.swift
//  learnSwift
//
//  Created by LXF on 2016/11/19.
//  Copyright © 2016年 LXF. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let vc = testSwift()
//        self.present(vc, animated: true) {
//            
//        }
        
        //self.presentViewController(vc, animated: true, completion: nil)


        
    }
    override func touchesEstimatedPropertiesUpdated(_ touches: Set<UITouch>) {
       
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //        lxfMenuVc.sliderColor = UIColor.blue
        //        lxfMenuVc.tipBtnNormalColor = UIColor.yellow
        //        lxfMenuVc.tipBtnHighlightedColor = UIColor.purple
        //        lxfMenuVc.headerColor = UIColor.green
        
        
        let vie = UIView()
        vie.frame = CGRect(x: 0, y: 0, width: 100, height: 40)
        vie.backgroundColor = UIColor(red: 0.96, green: 0.39, blue: 0.26, alpha: 1.0)
        self.view.addSubview(vie)
        //
        //        lxfMenuVc.tipBtnFontSize = 12
        //
        //        lxfMenuVc.view.frame = self.view.frame
        
    
    }
    

    
    
    
    /// 子标题
    lazy var subTitleArr:[String] = {
        return ["推荐推荐", "分类", "广播", "榜单", "主播"]
    }()
    
    lazy var array:[String]={
      return ["你好"]
    }()

    /// 子控制器
    var controllers:[UIViewController] = {
        // 创建5个子控制器
        var cons:[UIViewController] = [UIViewController]()
        for _ in 0..<5 {
            // 创建随机颜色
            let red = CGFloat(arc4random_uniform(255))/CGFloat(255.0)
            let green = CGFloat( arc4random_uniform(255))/CGFloat(255.0)
            let blue = CGFloat(arc4random_uniform(255))/CGFloat(255.0)
            let colorRun = UIColor.init(red:red, green:green, blue:blue , alpha: 1)
            
            let subController = UIViewController()
            subController.view.backgroundColor = colorRun
            cons.append(subController)
        }
        return cons
    }()
    
    
    /// 菜单分类控制器
    lazy var lxfMenuVc: LXFMenuPageController = {
        let pageVc = LXFMenuPageController(controllers: self.controllers, titles: self.subTitleArr)
        pageVc.delegate = self
        self.view.addSubview(pageVc.view)
        return pageVc
    }()
    
    

    
    
    /// 隐藏状态栏
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// MARK:- LXFMenuPageControllerDelegate
extension ViewController: LXFMenuPageControllerDelegate {
    func lxf_MenuPageCurrentSubController(index: NSInteger, menuPageController: LXFMenuPageController) {
        print("第\(index)个子控制器")
    }
}
