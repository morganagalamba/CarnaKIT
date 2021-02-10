//
//  ListView.swift
//  CarnaKit
//
//  Created by Morgana Beatriz on 09/02/21.
//

import SwiftUI

struct ListView: View {
    @State private var selection = 0
    private let items: [String] = ["Favoritos","Todos"]
    var body: some View {
        
        VStack(alignment: .leading){
            Text("Blocos")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
                .padding()
            Picker(selection: $selection, label: Text("")) {
                           ForEach(0..<items.count, id: \.self) { index in
                               Text(self.items[index]).tag(index)
                           }
                       }.pickerStyle(SegmentedPickerStyle())
            .padding()
            ScrollView{
                VStack{
                    CardBlocos("Eu acho é pouco", "Second line of text in here for this card element or component","EuAchoEPouco", true)
                }
            }
        }
        
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
