//
//  CPUColleague.swift
//  MediatorProtocol
//
//  Created by wanglei on 2019/4/14.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

class CPUColleague: ColleagueProtocol {
    
    var data: Data?
    
    func getData() -> Data? {
        return self.data
    }
    
    func transform() {
        self.mediator.changeColleague(colleague: self)
    }
}
