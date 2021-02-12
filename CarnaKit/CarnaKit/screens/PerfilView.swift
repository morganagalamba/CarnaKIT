//
//  PerfilView.swift
//  CarnaKit
//
//  Created by Morgana Beatriz on 09/02/21.
//

import SwiftUI

struct PerfilView: View {
    @State private var selection = 0
    private let items: [String] = ["Favoritos","Todos"]
    var body: some View {
        
        VStack(alignment: .center){
            Text("Amigos")
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
            if selection == 0 {
                ScrollView{
                    VStack{
                        CardAmigos("Hélio Silva", "@LOdoGera","EuAchoEPouco", true, "Ativo Agora")
                    }.frame(width: 400.0, height:170.0)
                    VStack{
                        CardAmigos("Hélio Silva", "@LOdoGera","EuAchoEPouco", true, "Ativo Agora")
                    }.frame(width: 400.0, height:170.0)
                    VStack{
                        CardAmigos("Hélio Silva", "@LOdoGera","EuAchoEPouco", true, "Ativo Agora")
                    }.frame(width: 400.0, height:170.0)
                    VStack{
                        CardAmigos("Hélio Silva", "@LOdoGera","EuAchoEPouco", true, "Ativo Agora")
                    }.frame(width: 400.0, height:170.0)
                }
            }
            else{
                ScrollView{
                    VStack{
                        CardAmigos("Hélio Silva", "@LOdoGera","EuAchoEPouco", true, "Ativo Agora")
                    }.frame(width: 400.0, height:170.0)
                    VStack{
                        CardAmigos("Hélio Silva", "@LOdoGera","EuAchoEPouco", true, "Ativo Agora")
                    }.frame(width: 400.0, height:170.0)
                    VStack{
                        CardAmigos("Hélio Silva", "@LOdoGera","EuAchoEPouco", true, "Ativo Agora")
                    }.frame(width: 400.0, height:170.0)
                    VStack{
                        CardAmigos("Hélio Silva", "@LOdoGera","EuAchoEPouco", true, "Ativo Agora")
                    }.frame(width: 400.0, height:170.0)
                    
                }
            }
            
            
        }
        
    }
}

struct PerfilView_Previews: PreviewProvider {
    static var previews: some View {
        PerfilView()
    }
}
