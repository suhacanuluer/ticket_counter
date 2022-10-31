//
//  TicketWithAlcohol.swift
//  Counter
//
//  Created by Süha Can Uluer on 28.10.2022.
//

import Foundation
import SwiftUI

class TicketModel: TicketViewModel {
    
    @Published var ticketName: String
    @Published var ticketPrice: Int
    @Published var ticketCount = 0
    @Published var totalTicketPrice = 0
    
    init (_ ticketName: String, _ ticketPrice: Int) {
        self.ticketPrice = ticketPrice
        self.ticketName = ticketName
    }
    
    func reset() {
        ticketCount = 0
        totalTicketPrice = 0
    }
    
    func sell() {
        ticketCount += 1
        totalTicketPrice += ticketPrice
    }
    
    func revoke() {
        ticketCount -= 1
        totalTicketPrice -= ticketPrice
    }
}
