//
//  ContentView.swift
//  CarnaKit
//
//  Created by Morgana Beatriz on 09/02/21.
//

import SwiftUI

struct ContentView: View {
    init(){
        UITabBar.appearance().isTranslucent = true
        UITabBar.appearance().barTintColor = UIColor(named: "Roxo")
    }
    var body: some View {
        
        TabView{
            
            ListView()
                .tabItem {
                    Image("list")
                    Text("Lista")
                     
                }
            MapView()
                .tabItem{
                    Image("map")
                    Text("Mapa")
                }
            PerfilView()
                .tabItem{
                    Image("perfil")
                    Text("Perfil")
                }
                
        }
        .accentColor(Color(.white))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
