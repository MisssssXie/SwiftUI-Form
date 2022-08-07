//
//  ContentView.swift
//  Form
//
//  Created by Sally Xie on 2022/8/7.
//

import SwiftUI

struct ContentView: View {
    //🏴‍☠️🚩🏳️‍🌈🏳️‍⚧️🇺🇳🇹🇹🇹🇨
    @State private var images = ["🏳️", "🏴", "🏴‍☠️", "🚩", "🏳️‍🌈", "🏳️‍⚧️", "🇺🇳", "🇹🇹", "🇹🇨"]
    
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
                
                Section(header: Text("第二區區區區區區區區區區第二區區區區區區區區區區第二區區區區區區區區區區第二區區區區區區區區區區第二區區區區區區區區區區第二區區區區區區區區區區")
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
                    Text("第一區區").lineLimit(nil).padding(2)
                    Text("第二區區").padding(2)
                }) {
                    ForEach(images, id: \.self) { img in
                        HStack {
                            Text("\(img)")
                                .font(.largeTitle)
                            Text("國旗")
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
