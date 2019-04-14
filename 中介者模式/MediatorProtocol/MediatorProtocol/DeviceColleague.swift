//
//  DataColleague.swift
//  MediatorProtocol
//
//  Created by wanglei on 2019/4/14.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

class DeviceColleague: ColleagueProtocol {
    
    var path: String?
    
    func loadData() {
        self.path = "aaa.mp4"
        self.mediator.changeColleague(colleague: self)
    }
}
