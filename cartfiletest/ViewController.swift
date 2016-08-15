//
//  ViewController.swift
//  cartfiletest
//
//  Created by tom on 16/8/11.
//  Copyright © 2016年 caoshengjie. All rights reserved.
//

import UIKit
import SwiftyJSON
import Alamofire
import SnapKit
//import Alamofire.Swift
//import Validation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let headers = [
            "Content-Type":"application/json",
            ]
        let body : [String : AnyObject] = [:]
        
        Alamofire.request(.GET, "http://httpbin.org/get")
        
        Alamofire.request(.GET, "http://httpbin.org/get", parameters: ["foo": "bar"])

//        Alamofire.request(.POST, "")
        
        ///*
        Alamofire.request(.GET, "http://www.baidu.com", headers: headers, parameters: body, encoding: .JSON).responseJSON { response in
            print("response = \(response)")
            let (response, result, data) = (response.response, response.result, response.data)
            if (result.error == nil) {
                print("response.response = \(response)")
                debugPrint("HTTP Response Body: \(data)")
            }else{
                print("Error value = \(response?.statusCode)")
            }
        }
        //*/
        
        let imgView = UIImageView()
        imgView.backgroundColor = .redColor()
        self.view.addSubview(imgView)
        imgView.snp_makeConstraints { (make) in
            make.left.top.equalTo(10)
            make.right.bottom.equalTo(-10)
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

