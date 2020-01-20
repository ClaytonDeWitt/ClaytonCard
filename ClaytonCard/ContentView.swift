//
//  ContentView.swift
//  ClaytonCard
//
//  Created by Clay on 12/9/19.
//  Copyright © 2019 Clay. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red:0.17, green:0.24, blue:0.31, opacity:1.0)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
            VStack {
                Image("clayaspect")
                    .resizable()
                   .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 160, height: 160)
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                )
                Text("Clay DeWitt")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "352 410 9927", imageName: "phone.fill")
                InfoView(text: "cdnp44@gmail.com", imageName: "envelope.fill")
            
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        .environment(\.colorScheme, .dark)
    }
}

