//
//  MenuListRow.swift
//  Menu
//
//  Created by Antony Holshouser on 11/8/24.
//

import SwiftUI

struct MenuListRow: View {
    var item:MenuItem
    
    var body: some View {
        HStack {
            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 50)
                .clipShape(.rect(cornerRadius: 10))
            
            Text(item.name)
                .bold()
            Spacer()
            Text("$" + item.price)
        }
        .listRowSeparator(.hidden)
        .listRowBackground(
            Color.brown
                .opacity(0.1)
        )
    }
}

#Preview {
    MenuListRow(item: MenuItem(name: "1", price: "2", imageName: "3"))
}
