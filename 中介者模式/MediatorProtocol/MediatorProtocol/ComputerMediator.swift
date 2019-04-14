//
//  ComputerMediator.swift
//  MediatorProtocol
//
//  Created by wanglei on 2019/4/14.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

class ComputerMediator: MediatorProtocol {
    
    var device: DeviceColleague!
    var cpu: CPUColleague!
    var displayCard: DisplayCardColleague!
    
    func changeColleague(colleague: ColleagueProtocol) {
        if colleague === self.device! {
            self.handleCPU()
        } else if colleague === self.cpu! {
            self.handleDisplayCard()
        }
    }
    
    func handleCPU() {
        self.cpu?.transform()
    }
    
    func handleDisplayCard() {
        self.displayCard?.play()
    }
}
