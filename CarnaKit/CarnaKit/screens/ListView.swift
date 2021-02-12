//
//  ListView.swift
//  CarnaKit
//
//  Created by Morgana Beatriz on 09/02/21.
//

import SwiftUI

struct ListView: View {
    @State var pesquisa: String = ""
    @State private var selection = 0
    private let items: [String] = ["Favoritos","Todos"]
    let colors = Gradient(colors: [Color("Rosa"),Color("Roxo")] )
    
    var body: some View {
        ZStack{
            Rectangle()
            Color("Roxo")
                .ignoresSafeArea(edges: .top)
                
            VStack(alignment: .leading){
                
                Text("Blocos")
                    .font(.title)
                    .bold()
                    .padding()
                HStack{
                    Image(systemName: "magnifyingglass")
                    TextField("Pesquisar",text: $pesquisa)
                }.modifier(customViewModifier())
                .padding()
                //.textFieldStyle(OvalTextFieldStyle())
                    
                
                VStack{
                    Picker(selection: $selection, label: Text("")) {
                                   ForEach(0..<items.count, id: \.self) { index in
                                       Text(self.items[index]).tag(index)
                                   }
                               }.pickerStyle(SegmentedPickerStyle())
                                .padding()
                    
                }
                
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
                                Spacer()
                                CardBlocos("Eu acho é pouco", "Second line of text in here for this card element or component","EuAchoEPouco", true)
                                
                                
                            }
                        }.padding()
                        
                    }.background(RadialGradient(gradient: colors, center: .trailing, startRadius: 0, endRadius: 300))
                    
                    
                }
                else{
                    ZStack(alignment:.topTrailing){
                        Image("confetes")
                            .multilineTextAlignment(.trailing)
                        Image("confetes")
                            .offset(y: 400)
                        ScrollView{
                            Text("Hoje")
                                .font(.title2)
                                .bold()
                            CardBlocos("Eu acho é pouco", "Second line of text in here for this card element or component","EuAchoEPouco", true)
                            Spacer()
                            CardBlocos("Eu acho é pouco", "Second line of text in here for this card element or component","EuAchoEPouco", true)
                        }.padding()
                    }.background(RadialGradient(gradient: colors, center: .trailing, startRadius: 0, endRadius: 300))
                    
                }
                
                
            }
            
            .background(Color("Roxo"))
            .foregroundColor(.white)
            
        }
        }
        
}
struct customViewModifier: ViewModifier {

    func body(content: Content) -> some View {
        content
            .padding()
            .background(SwiftUI.Color("roxoTab"))
            .cornerRadius(10)
            //.padding()
            .foregroundColor(.white)
            
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()

            .preferredColorScheme(.light)
            
    }
}
