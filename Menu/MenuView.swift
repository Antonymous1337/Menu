//
//  ContentView.swift
//  Menu
//
//  Created by Antony Holshouser on 11/8/24.
//

import SwiftUI

struct MenuView: View {
    
    @State var menuItems:[MenuItem] = [MenuItem]()
    var dataService = DataService()
    
    var body: some View {
        List(menuItems) { item in
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
        .listStyle(.plain)
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                menuItems = dataService.getData()
            }
        }
    }
}

#Preview {
    MenuView()
}
