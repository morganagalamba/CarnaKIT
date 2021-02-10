//
//  CardBlocos.swift
//  CarnaKit
//
//  Created by Morgana Beatriz on 10/02/21.
//

import SwiftUI

struct CardBlocos: View {
    private let blocoName: String
    private let description: String
    private let blocoPhoto: String
    @State private var see: Bool = true
    
    init(_ blocoName: String, _ description: String, _ blocoPhoto: String, _ see: Bool){
        self.blocoName = blocoName
        self.description = description
        self.blocoPhoto = blocoPhoto
        self.see = see
    }
    var body: some View {
        HStack{
            Image("\(blocoPhoto)")
                .resizable()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            //CircleImage()
            VStack(alignment: .leading){
                HStack{
                    /*Text("\(blocoName)")
                        .bold()
                        .font(.title2)*/
                    
                    Toggle(isOn: $see){
                        Text("\(blocoName)")
                            .font(.title2)
                            .bold()
                    }
                }
                Text("\(description)")
                    .font(.subheadline)
            }
        }
        .padding()
    }
}

struct CardBlocos_Previews: PreviewProvider {
    static var previews: some View {
        CardBlocos("Eu acho é pouco", "Second line of text in here for this card element or component","EuAchoEPouco", true)
    }
}
