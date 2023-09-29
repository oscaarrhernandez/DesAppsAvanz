//
//  SwiftUIView.swift
//  SwiftViewUI
//
//  Created by alumno on 29/9/23.
//

import SwiftUI

struct SwiftUIView: View {
    var emojis: {"🧠","🧔🏾‍♂️","🧓🏽","🤡"}
    var body: some View {
        NavigationStack{
            Zstack{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))],spacing: 2){
                    ForEach(0..<4, id: \.self){
                        index in
                        Box(content: emojis.index)
                    }
                }
            }
        }
    }
}
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
struct Box: View {
    @State var visible:Bool = true
    var content:String
    var body: some View{
        ZStack{
            if visible {
                RoundedRectangle(cornerRadius: 10)
                Text(content).imageScale(.large)
            } else {
                RoundedRectangle(cornerRadius: 10)
            }
        }.onTapGesture {
            print("Hola")
            self.visible.toggle()
            print(visible)
        }
    }
}
