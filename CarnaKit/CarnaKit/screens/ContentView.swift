//
//  ContentView.swift
//  CarnaKit
//
//  Created by Morgana Beatriz on 09/02/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            ListView()
                .tabItem {
                    Text("Lista")
                }
            MapView()
                .tabItem{
                    Text("Mapa")
                }
            PerfilView()
                .tabItem{
                    Text("Amigos")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
