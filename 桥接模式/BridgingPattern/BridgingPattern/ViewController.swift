//
//  ViewController.swift
//  BridgingPattern
//
//  Created by wanglei on 2019/4/13.
//  Copyright © 2019 wanglei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        let ingredients = SugarIngredients()
        
        let coffee = BigCoffee(ingredients: ingredients)
        coffee.createCoffee()
        
    }

}

