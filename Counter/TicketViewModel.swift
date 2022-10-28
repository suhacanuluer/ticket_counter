//
//  Ticket.swift
//  Counter
//
//  Created by Süha Can Uluer on 28.10.2022.
//

import Foundation
import SwiftUI

protocol TicketViewModel: ObservableObject {
    
    var ticketName: String { get set }
    var ticketPrice: Int { get set }
    var ticketCount: Int { get set }
    var totalTicketPrice: Int { get set }
    
    func reset()
    func sell()
    func revoke()
}
