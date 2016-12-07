//
//  ViewController.swift
//  cartfiletest
//
//  Created by tom on 16/8/11.
//  Copyright © 2016年 caoshengjie. All rights reserved.
//

import UIKit
//import SwiftyJSON
import Alamofire
import SnapKit
//import Validation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        ///*
//        let headers = ["Content-Type":"application/json",]
        let body : Parameters = [:]
//        let parameters: Parameters = ["foo": "bar"]
        
        // Alamofire 4
        Alamofire.request("", method: .get ,parameters: body, encoding: JSONEncoding.default)
            .validate { request, response, data in
                // Custom evaluation closure now includes data (allows you to parse data to dig out error messages if necessary)
                return .success
            }
            .responseJSON { response in
                debugPrint(response)
                
            }
        
    
        // Alamofire 3
        /*
        Alamofire.request(.GET, "http://httpbin.org/get", parameters: ["foo": "bar"])
//        Alamofire.request(.POST, "")
        Alamofire.request(.GET, "http://www.baidu.com", headers: headers, parameters: body, encoding: .json).responseJSON { response in
            print("response = \(response)")
            let (response, result, data) = (response.response, response.result, response.data)
            if (result.error == nil) {
                print("response.response = \(response)")
                debugPrint("HTTP Response Body: \(data)")
            }else{
                print("Error value = \(response?.statusCode)")
            }
        }
        */
        
        let imgView = UIImageView()
        imgView.backgroundColor = UIColor.red
        self.view.addSubview(imgView)
        imgView.snp.makeConstraints { (make) in
            make.left.top.equalTo(10)
            make.right.bottom.equalTo(-10)
        }
//        imgView.snp_makeConstraints { (make) in
//            make.left.top.equalTo(10)
//            make.right.bottom.equalTo(-10)
//        }
        //*/
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

