//
//  Person.swift
//  OcMixSwift
//
//  Created by mac on 2020/6/3.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

class Person: NSObject {
    @objc func sayHello(name:String) {//注意此处必须标注 @objc
           print("\(name) say hello")
           
           let animal = Animal()
           animal.eat("Dog")
       }
}
