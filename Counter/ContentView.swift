//
//  ContentView.swift
//  Counter
//
//  Created by Süha Can Uluer on 21.10.2022.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var entryTicket = TicketModel("Giriş", 20)
    @ObservedObject var entryWithAlcoholTicket = TicketModel("Alkollu Giriş", 50)
    @ObservedObject var entryWithDinnerTicket = TicketModel("Yemekli Giriş", 100)
    @ObservedObject var entryWithChildTicket = TicketModel("Çocuklu Giriş", 70)
    @ObservedObject var entryWithSpeacialTicket = TicketModel("Özel Giriş", 200)
    
    var body: some View {
        let totalAllPrice = entryTicket.totalTicketPrice +
                            entryWithAlcoholTicket.totalTicketPrice +
                            entryWithDinnerTicket.totalTicketPrice +
                            entryWithChildTicket.totalTicketPrice +
                            entryWithSpeacialTicket.totalTicketPrice
        ScrollView {
            VStack {
                VStack {
                    Group {
                        TicketView(ticketModel: entryTicket)
                        Divider().background(.red)
                        TicketView(ticketModel: entryWithAlcoholTicket)
                        Divider().background(.red)
                        TicketView(ticketModel: entryWithDinnerTicket)
                        Divider().background(.red)
                        TicketView(ticketModel: entryWithChildTicket)
                        Divider().background(.red)
                        TicketView(ticketModel: entryWithSpeacialTicket)
                        Divider().background(.red)
                    }
                    Text("Toplam Para: \(totalAllPrice)")
                }
                .font(.system(size: 25))
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
