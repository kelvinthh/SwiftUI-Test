//
//  ContentView.swift
//  SwiftUI Test
//
//  Created by Kelvin Tam on 28/5/2022.
//

import SwiftUI

struct ContentView: View {
    @State var isActive = false
    var body: some View {
        NavigationView{
            VStack(alignment: .center){
                
                CardView(isActive: self.$isActive)
                CardView(isActive: self.$isActive)
                CardView(isActive: self.$isActive)
                Divider()
                Spacer()
                Button(action: {isActive = !isActive}) {
                    Text("Lovely Button")
                        .foregroundColor(Color.orange)
                }
            }
            .padding()
            .background(Color.blue)
            .navigationTitle(
                Text("Swift UI Test 💻")
            )
        }
        
    }
}

struct CardView: View {
    @Binding var isActive: Bool
    var body: some View{
        VStack(alignment: .leading, spacing: 0.0){
            Text("Hello World")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text("Don't come to my house")
            Text("I will quickscope your mom with my CoD")
        }
        .padding(.all, 15.0)
        .background(isActive ? Color.white : Color.orange)
        .cornerRadius(/*@START_MENU_TOKEN@*/15.0/*@END_MENU_TOKEN@*/)
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
            .previewInterfaceOrientation(.portrait)
    }
}
