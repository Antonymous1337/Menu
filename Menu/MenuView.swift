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
            
            MenuListRow(item: item)
            
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
