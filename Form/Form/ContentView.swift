//
//  ContentView.swift
//  Form
//
//  Created by Sally Xie on 2022/8/7.
//

import SwiftUI

struct ContentView: View {
    //π΄ββ οΈπ©π³οΈβππ³οΈββ§οΈπΊπ³πΉπΉπΉπ¨
    @State private var images = ["π³οΈ", "π΄", "π΄ββ οΈ", "π©", "π³οΈβπ", "π³οΈββ§οΈ", "πΊπ³", "πΉπΉ", "πΉπ¨"]
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("")) {
                    HStack {
                        Text("show preveiw")
                        Spacer()
                        NavigationLink(destination: Text("")) {
                            Text("Always")
                                .foregroundColor(Color.gray)
                        }.fixedSize()
                        
                    }
                }
                
                Section(header: Text("η¬¬δΊεεεεεεεεεεη¬¬δΊεεεεεεεεεεη¬¬δΊεεεεεεεεεεη¬¬δΊεεεεεεεεεεη¬¬δΊεεεεεεεεεεη¬¬δΊεεεεεεεεεε")
                            .foregroundColor(Color.gray)
                            .padding(10)
                            .lineLimit(nil)) {
                    HStack {
                        Text("siri gogo")
                        Spacer()
                        NavigationLink(destination: Text("")) {
                            Text("")
                                .foregroundColor(Color.gray)
                        }.fixedSize()
                        
                    }
                }
                
                Section(header: VStack(alignment: .leading) {
                    Text("η¬¬δΈεε").lineLimit(nil).padding(2)
                    Text("η¬¬δΊεε").padding(2)
                }) {
                    ForEach(images, id: \.self) { img in
                        HStack {
                            Text("\(img)")
                                .font(.largeTitle)
                            Text("εζ")
                        }
                        
                    }
                }
            }
            .navigationBarTitle("Notification", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
