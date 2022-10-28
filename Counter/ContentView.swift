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
    var body: some View {
        VStack {
            VStack {
                TicketView(ticketModel: entryTicket)
                Divider().background(.red)
                TicketView(ticketModel: entryWithAlcoholTicket)
                Divider().background(.red)
                Text("Toplam Para: \(entryTicket.totalTicketPrice + entryWithAlcoholTicket.totalTicketPrice)")
            }
            .font(.system(size: 25))
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
