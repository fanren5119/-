//
//  OrderAgreegrate.swift
//  OrderIterator
//
//  Created by wanglei on 2019/4/3.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

protocol OrderAgreegrate {
    
    associatedtype T
    
    func iterator() -> OrderIterator<T>
}
