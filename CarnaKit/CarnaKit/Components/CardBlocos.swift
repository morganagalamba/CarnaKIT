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
                            .foregroundColor(.black)
                            .font(.title2)
                            .bold()
                    }
                    
                }
                HStack{
                    Text("BLOCO")
                        .font(.subheadline)
                        .bold()
                        .foregroundColor(.black)
                    Text("OLINDA")
                        .font(.subheadline)
                        .foregroundColor(Color("Roxo"))
                        .font(.body)
                        .bold()
                }
                HStack{
                    Text("8:00")
                        .bold()
                        .font(.title)
                        .foregroundColor(.black)
                    Text("Rua de São Bento\n 358")
                        .foregroundColor(.black)
                        .bold()
                }.padding(.top)
               
            }
        }
        .padding()
        .background(Color(.white))
        .cornerRadius(25)
       
    }
}

struct CardBlocos_Previews: PreviewProvider {
    static var previews: some View {
        CardBlocos("Eu acho é pouco", "Second line of text in here for this card element or component","EuAchoEPouco", true)
    }
}
