//
//  TicketView.swift
//  Counter
//
//  Created by Süha Can Uluer on 28.10.2022.
//

import Foundation
import SwiftUI

struct TicketView<Model>: View where Model: TicketViewModel{
    @ObservedObject var ticketModel: Model
    
    var body: some View {
        VStack {
            Text(ticketModel.ticketName + ": " + String(ticketModel.ticketCount))
            HStack {
                Button(action: { ticketModel.revoke() }) {
                    Image(systemName: "minus.square")
                        .font(.system(size: 40))
                        .foregroundColor(.red)
                }.padding()
                Spacer()
                Text("Kasa: \(ticketModel.totalTicketPrice)")
                Spacer()
                Button(action: { ticketModel.sell() }
                ) {
                    Image(systemName: "plus.square")
                        .font(.system(size: 40))
                        .foregroundColor(.green)
                }.padding()
            }
            // todo: resete tıklayınca emin misin? popup çıkacak
            Button(action: { ticketModel.reset() }
            ) {
                Text("Reset")
                    .foregroundColor(.blue)
            }
        }
    }
}
