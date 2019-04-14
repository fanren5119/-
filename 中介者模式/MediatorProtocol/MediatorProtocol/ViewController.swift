//
//  ViewController.swift
//  MediatorProtocol
//
//  Created by wanglei on 2019/4/14.
//  Copyright © 2019 wanglei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let mediator = ComputerMediator()
        
        let device = DeviceColleague(mediator: mediator)
        let cpu = CPUColleague(mediator: mediator)
        let display = DisplayCardColleague(mediator: mediator)
        mediator.device = device
        mediator.cpu = cpu
        mediator.displayCard = display
        
        device.loadData()
    }


}

