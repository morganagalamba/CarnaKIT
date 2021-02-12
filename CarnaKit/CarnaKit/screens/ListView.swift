//
//  ListView.swift
//  CarnaKit
//
//  Created by Morgana Beatriz on 09/02/21.
//

import SwiftUI

struct ListView: View {
    @State private var selection = 1
    private let items: [String] = ["Favoritos","Todos"]
    let colors = Gradient(colors: [Color("Rosa"),Color("Roxo")] )
    
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
            
            
                    //Text("Value: \(selection)")
                        .padding()
            if selection == 1 {
                ZStack(alignment: .topTrailing){
                    Image("confetes")
                    Image("confetes")
                        .offset(y: 400)
                    VStack(alignment: .leading){
                        
                        ScrollView{
                            Text("Hoje")
                                .font(.title2)
                                .bold()
                            CardBlocos("Eu acho é pouco", "Second line of text in here for this card element or component","EuAchoEPouco", true)
                            
                            
                        }
                    }.padding()
                    
                }.background(RadialGradient(gradient: colors, center: .trailing, startRadius: 0, endRadius: 300))
                
                
            }
            else{
                ScrollView{
                    
                }
                
            }
            
            
        }
        
        .background(Color("Roxo"))
        .foregroundColor(.white)
        
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()

            .preferredColorScheme(.light)
            
    }
}
